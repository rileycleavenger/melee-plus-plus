# Melee++

Super Smash Bros. Melee on your Mac or Windows PC with **new fighters**:
Geno, King Boo, Optimus Prime and the Crewmate, each with their own moves,
specials, effects and results screen. Underneath it is
[Melee 4K](https://github.com/rileycleavenger/melee-4k): 4K, widescreen, HD
textures, up to 144 fps and online play.

## New fighters

| Fighter | Plays on | Specials (B / side B / up B / down B) |
|---|---|---|
| Geno | Mario's frame | Geno Beam / Geno Whirl / lightning up B / Geno Boost |
| King Boo | Jigglypuff's frame | Ghost Swarm / Boo Dash / Boo Teleport / Crown Slam |
| Optimus Prime | Samus's frame | Ion Blaster / Roll Out / Rising Axe / Matrix of Leadership |
| Crewmate | Kirby's frame | Emergency Meeting / Impostor Kill / Ejected / Vent |

They are on character select around the grid; the **CUSTOM** switch left of
Dr. Mario hides or shows them. Online they play when everyone runs the same
Melee++. How they are made: [docs/fighters.md](docs/fighters.md). Model
credits: each release's `CREDITS.txt`.

[![Gameplay on Yoshi's Story: click to watch](docs/media/yoshis-story.jpg)](docs/media/gameplay.mp4)

**[▶ Watch gameplay](docs/media/gameplay.mp4)**

| | |
|---|---|
| ![Battlefield](docs/media/battlefield.jpg) | ![Fountain of Dreams](docs/media/fountain-of-dreams.jpg) |
| ![Pokémon Stadium](docs/media/pokemon-stadium.jpg) | ![Character select](docs/media/character-select.jpg) |
| ![Main menu](docs/media/main-menu.jpg) | ![Settings](docs/media/settings.jpg) |

## Install

You need your own copy of the game: a disc image of **Super Smash Bros. Melee
(USA, version 1.02)**, as `.iso`, `.gcm`, `.ciso` or `.rvz`. No game data comes
with Melee++.

### macOS (Apple Silicon: M1 or newer)

1. Open **Terminal** (Spotlight: type "Terminal"), paste this line and press
   Return:

   ```
   curl -fsSL https://raw.githubusercontent.com/rileycleavenger/melee-plus-plus/main/install.sh | bash
   ```
2. A Finder window opens: drag your Melee disc image into it.
3. Wait for **Installed**. The first run downloads the HD textures (about
   2.5 GB, a few minutes), then the game starts.

After that, open **Melee++** from the Desktop, Launchpad or Spotlight.

### Windows (10 or 11, 64-bit)

1. Download **MeleePlusPlus-Windows-x86_64.zip** from the
   [latest release](https://github.com/rileycleavenger/melee-plus-plus/releases/latest),
   right-click it and choose **Extract All**.
2. Drag your Melee disc image into the **PUT-YOUR-ROM-HERE** folder.
3. Double-click **Setup.exe**. If Windows says "Windows protected your PC",
   click **More info**, then **Run anyway**.
4. Wait for **Done**. The first run downloads the HD textures (about 2.5 GB,
   a few minutes), then the game starts.

After that, use the **Melee++** shortcut Setup put on your desktop.

### Updating

In the game: **Options > Melee++ > Check for Updates** (or F1). When a new
version is out, press A again: the game closes, updates itself and opens
again. Your disc, saves, settings and textures are kept. (Or: run the
Terminal line again on macOS; on Windows extract the new release, move your
disc image into its PUT-YOUR-ROM-HERE folder and run Setup.)

---

Controls, online play, settings and troubleshooting: [docs/playing.md](docs/playing.md).
Building, credits and license: [docs/melee-4k.md](docs/melee-4k.md),
[NOTICE.md](NOTICE.md). Keeping Melee++ in step with Melee 4K:
[docs/melee-plus-plus.md](docs/melee-plus-plus.md).
