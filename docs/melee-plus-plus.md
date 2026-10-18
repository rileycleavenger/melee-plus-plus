# Melee++

Melee++ is [Melee 4K](https://github.com/rileycleavenger/melee-4k) with
custom fighters. Both are built from the same code; `product.env` says
which one a tree builds:

| | Melee 4K | Melee++ |
|---|---|---|
| Repo | rileycleavenger/melee-4k (`v1-pc`) | rileycleavenger/melee-plus-plus (`main`) |
| Players see | Melee 4K | Melee++ |
| App, folder, zips | `Melee4K` | `MeleePlusPlus` |
| Updates and online's latest version | melee-4k releases | melee-plus-plus releases |
| Fighter packs | off | on |

Both use the same settings folder (`melee-pc`), so one HD texture download
serves both; each keeps its own log, install record and latest-release
cache there (named by `PRODUCT_SLUG`). Online, the build id includes the
product, so the two never share a lobby.

What only Melee++ has: the custom fighters' moves
(`src/melee/ft/kinds/ft<Name>/`, listed in `src/melee/ft/ftcustom.c`'s
`k_moves`), the tools that make fighters (`tools/fighter/`), the
make-fighter skill (`.claude/skills/make-fighter/`) and
[fighters.md](fighters.md). The engine's pack support is in both.

## Taking Melee 4K's changes

```
git remote add melee-4k https://github.com/rileycleavenger/melee-4k.git   # once
git fetch melee-4k
git merge melee-4k/v1-pc
```

Melee 4K's commit "Melee 4K is the base game: custom fighters move to
Melee++" removed the fighters there. It is merged here with `-s ours` (kept
out), so merges never take the fighters away. Expect conflicts only in the
files the products set differently: `product.env`, `install.sh`,
`README.md` and `platforms/release/README.txt`; keep Melee++'s values.

## The packs

Packs hold the models, textures and menu images, which are other people's
art, so they are not in git. They are built with `tools/fighter/`
(fighters.md) into a packs folder, and shipped in the release zips:

- macOS: `FIGHTERS=<packs> tools/package_release_macos.sh` puts them in
  the app (`Contents/Resources/fighters/`) and their `CREDITS.txt` files
  together beside it.
- Windows: run `.github/workflows/release-windows.yml`, download its zip,
  then `tools/add_fighters_windows.sh MeleePlusPlus-Windows-x86_64.zip
  <packs>` puts them next to `melee.exe` with the credits.

Each pack needs a `CREDITS.txt` naming its model's author and licence.
