#!/bin/bash
# Put custom fighter packs into a Windows release zip built by
# .github/workflows/release-windows.yml (which has no packs: they are not in
# git). The packs go next to melee.exe (<FILE>/<FILE>/fighters/, where the
# game looks first, docs/fighters.md) and their model credits into
# <FILE>/CREDITS.txt, as tools/package_release_macos.sh does with FIGHTERS.
#
#   tools/add_fighters_windows.sh <FILE>-Windows-x86_64.zip PACKS_DIR
#
# The zip is rewritten in place.
set -euo pipefail

ZIP="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
PACKS="$2"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "${ROOT_DIR}/product.env"
[[ "${PRODUCT_FIGHTER_PACKS}" == 1 ]] || { echo "product.env has PRODUCT_FIGHTER_PACKS=0" >&2; exit 1; }

WORK="$(mktemp -d)"
trap 'rm -rf "${WORK}"' EXIT
unzip -q "${ZIP}" -d "${WORK}"
GAME="${WORK}/${PRODUCT_FILE}/${PRODUCT_FILE}"
[[ -f "${GAME}/melee.exe" ]] || { echo "${ZIP} has no ${PRODUCT_FILE}/${PRODUCT_FILE}/melee.exe" >&2; exit 1; }
rm -rf "${GAME}/fighters"
mkdir -p "${GAME}/fighters"
cp -R "${PACKS}"/. "${GAME}/fighters/"
for credits in "${PACKS}"/*/CREDITS.txt; do
    [[ -f "${credits}" ]] && { cat "${credits}"; printf '\n\n'; }
done > "${WORK}/${PRODUCT_FILE}/CREDITS.txt"
rm -f "${ZIP}"
(cd "${WORK}" && zip -qr -X "${ZIP}" "${PRODUCT_FILE}")
unzip -l "${ZIP}" | grep -c "/fighters/" | xargs echo "fighter files:"
