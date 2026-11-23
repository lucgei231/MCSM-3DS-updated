# Changes from m1-q's port
- CIA versions
- completely removed russian, only english
- bundled the assets with the CIA so you don't have to download assets
- added .bat files for compiling

# mcsm-3ds <img src="icon.png" alt="MCSM 3DS Icon" width="32"/> 


An unofficial port of **Minecraft: Story Mode** (Netflix Edition) for the Nintendo 3DS and 2DS family of systems.


Inspired by [mcsm_portable](https://github.com/entitybtw/mcsm_portable) (PSP port).

<p align="center">
  <img src="https://github.com/user-attachments/assets/69cca2c7-c9e7-40cd-b5b3-2dd8c9791de9" width="48%" alt="image 1" />
  <img src="https://github.com/user-attachments/assets/ac875009-dc15-482f-9e66-efa058b8bcf7" width="48%" alt="image 2" />
</p>

---


## 🗺️ Roadmap

### v1.0.0 (Released)
- *v1.0.0* [x] Fully playable Episode 1 with all branching storylines and choices
- *v1.0.0* [x] Title screen, Main Menu, and in-game Pause menu (`START`)
- *v1.0.0* [x] Hybrid 3-in-1 controls (ABXY, D-Pad, and Touchscreen)
- *v1.0.0* [x] Custom *Minecraft Seven* font rendering (`.bcfnt`)
- *v1.0.0* [x] Hardware-accelerated video playback (Theora/Y2R) & zero-CPU audio thread (Tremor)
- *v1.0.0* [x] Persistent settings & autosave system

### v1.1.x (Fixes & QoL)
- *v1.1.0* [x] English set as default interface language 
- *v1.1.0* [x] Bundle assets in release
- *v1.1.1* [ ] System sleep mode / lid close handling via `aptHook`
- *v1.1.2* [ ] UI sound effects (Minecraft button clicks and navigation SFX)
- *v1.1.3* [ ] Pop-up notification overlay (*"Jesse will remember that"*)
- *v1.1.4* [ ] Seamless black fade transitions between video scenes

### v1.2.x (Subtitles & Enhanced UI)
- *v1.2.0* [ ] Subtitles engine (`.srt`) with character-specific text colors
- *v1.2.1* [ ] Action QTE sequences ("Mash A" building moments)
- *v1.2.2* [ ] Multiple save slots (Wii U / Switch style slot selector)
- *v1.2.3* [ ] Dual-screen HUD elements (Dynamic Order Amulet & active item display)
- *v1.2.4* [ ] Fast-forward option (`R` trigger) for previously watched scenes
- *v1.2.5* [ ] Stereoscopic 3D depth effect for UI layers and subtitles

### v2.0.0+ (The Complete Season)
- *v2.0.0* [ ] Modular Episode Manager
- *v2.0.1* [ ] Cross-episode decision flag persistence
- *v2.0.0* [ ] Episode 2
- *v3.0.0* [ ] Episode 3
- *v4.0.0* [ ] Episode 4
- *v2.1.0* [ ] Support for the Female Jesse story branch (`epX_fem`)
- *v2.2.0* [ ] Modular localization system (partial UI, subtitles, and audio selection across languages)
- *v2.0.2* [ ] C-Stick / Circle Pad Pro navigation support


---


## Controls

| Button | Action |
| :--- | :--- |
| **Y / X / A / B** | Direct Story Choices |
| **D-Pad Up / Down** | Navigate Menu / Choice Highlight |
| **A** | Confirm Selection |
| **B** | Back / Resume from Pause |
| **Touchscreen / Stylus** | Direct tap on buttons & choices |
| **START** | In-Game Pause Menu / Title Screen Proceed |
| **L + R + X** | Toggle Secret Debug Menu (Skip scenes enabled) |


---


## Installation


1. Download the latest release from the [Releases](https://github.com/m1-q/mcsm-3ds/releases) page.
2. For Homebrew Launcher, copy `mcsm-3ds.3dsx` to `sdmc:/3ds/` or where you wanna.
3. For CIA installation, install `mcsm-3ds.cia` with FBI or another CIA installer.
4. Both packages include the game assets. No separate `assets/` folder is required.

## Building on Windows

- Install devkitPro for 3DS in `E:\devkitpro`.
- Install the Theora portlib if it is not already present: `pacman -S 3ds-libtheora`.
- Install [3dstool](https://github.com/dnasdw/3dstool/releases) into `%DEVKITPRO%\tools\bin` to create the CIA RomFS image.
- Run `compile-3dsx.bat` to build the Homebrew Launcher package.
- Run `compile-cia.bat` to build the installable CIA package.


## Credits

- **Mojang & Telltale Games** - Original Minecraft: Story Mode.

- **pox1016** - Netflix Interactive to YouTube adaptation
  
- **entitybtw** - Inspiration and research from the PSP port (mcsm_portable).

- **oreo639** - Base video playback research (3ds-theoraplayer).

- **devkitPro / libctru team** - Nintendo 3DS toolchain & libraries.

