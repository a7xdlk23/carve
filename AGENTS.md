<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# Carve

## Purpose
Carve is a cross-platform, Qt6-based level (map) editor for idTech
(Quake 1/2/3, Doom 3), Source Engine, and GoldSrc games. It is an **early-alpha**
fork of [NetRadiant-custom](https://github.com/Garux/netradiant-custom) whose
distinguishing goal is first-class Source/GoldSrc support — loading and saving
Valve formats (VMF maps, VMT materials, VTF textures, VPK/GMA/GCF archives, MDL
models, FGD entity definitions) via the [sourcepp](https://github.com/craftablescience/sourcepp)
library. Lineage: GtkRadiant 1.4 → 1.5 → NetRadiant → NetRadiant-custom → this.

The repository produces the `radiant` editor executable plus a family of
standalone command-line map-compiler tools (`q3map2`, `mbspc`, `q2map`,
`qdata3`, `h2data`), a set of loadable format **modules**, and optional editor
**plugins**. A fully prepared copy of the editor is assembled under `install/`
after a build.

## Key Files
| File | Description |
|------|-------------|
| `CMakeLists.txt` | Top-level build: options, FetchContent deps, and the `radiant`/`commandlib`/`mathlib`/`gtkutil`/`l_net`/`xmllib`/`quickhull` static libs + main executable |
| `CMakePresets.json` | CMake configure/build presets |
| `README.md` | Project overview, supported games, feature list, FAQ, TODO, build instructions |
| `Doxyfile` | Doxygen configuration for API docs |
| `GPL`, `LGPL`, `COPYING` | License texts — editor is GPLv2, support libraries are LGPL |
| `AUTHORS`, `.mailmap` | Contributor list and git identity mapping |
| `.editorconfig` | Indentation/whitespace conventions (tabs) |
| `.gitignore`, `.gitattributes` | VCS configuration |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `radiant/` | The editor application — the `radiant` executable (see `radiant/AGENTS.md`) |
| `include/` | Public interface headers (the ABI between the host and modules/plugins) (see `include/AGENTS.md`) |
| `libs/` | Static support libraries and shared header utilities (see `libs/AGENTS.md`) |
| `modules/` | Loadable format-handler shared libraries (image/model/map/archive/shader) (see `modules/AGENTS.md`) |
| `plugins/` | Optional editor feature plugins (see `plugins/AGENTS.md`) || `cmake/` | Build-system modules (per-tool builds, modules/plugins glue, gamepack generation) (see `cmake/AGENTS.md`) |
| `resources/` | Runtime assets bundled into the editor: icons, GLSL shaders, themes (see `resources/AGENTS.md`) || `docs/` | End-user documentation shipped with the editor (see `docs/AGENTS.md`) |
| `.github/` | CI workflow and repository media (see `.github/AGENTS.md`) |
## For AI Agents

### Working In This Directory
- **Build:** `cmake -Bbuild -S.` then `cmake --build build`. The result is staged
  under `install/`. On Linux you need `libxml2-devel` and `qt6-qtbase-devel`
  (names vary by distro). `sourcepp`, `assimp`, and (if missing) `libxml2` are
  fetched automatically via `FetchContent` — the first configure needs network.
- **Architecture:** the editor is a **module host**. Core types/ABI live in
  `include/`; format support is provided by shared libraries in `modules/`
  (loaded from `install/modules/`); optional features by `plugins/` (loaded from
  `install/plugins/`); reusable code by static/header libraries in `libs/`.
- **Language/flags:** C17 and C++20. Qt6 is built with `QT_NO_KEYWORDS`, so use
  `Q_SLOTS`/`Q_SIGNALS`/`Q_EMIT` (never `slots`/`signals`/`emit`). The editor and
  modules compile with `-fno-rtti`, `-fpermissive`, and `-fno-strict-aliasing`.
- **Source Engine support** is gated by the CMake option `RADIANT_SUPPORT_SOURCE`
  (ON by default). It selects sourcepp-backed implementations and enables the
  `archivevpk`, `imagevtf`, and `mapvmf` modules; assimp support is gated by
  `RADIANT_USE_ASSIMP`. Don't assume a source file compiles unconditionally —
  check the relevant `cmake/*.cmake` and the option guards.
- Do **not** make live changes in `old/`; it is the previous-generation codebase
  retained only for porting reference.

### Testing Requirements
- There is no editor unit-test suite. Verify changes by building and launching
  `install/radiant` (open/save a map, etc.).
- `regression_tests/q3map2/` contains map cases that exercise the q3map2
  compiler; each case has a `README.txt` describing the bug it guards against.

### Common Patterns
- Source units are paired `name.cpp` / `name.h`.
- Modules/plugins register through `SingletonModule` (see `libs/modulesystem/`)
  and expose the interfaces declared in `include/`.
- The scene is a reference-counted graph of `scene::Node` (see `include/iscenegraph.h`).

## Dependencies

### External
- **Qt6** — Core, Gui, Widgets, Svg, OpenGL, OpenGLWidgets (UI, rendering, resources)
- **LibXml2** — XML map/config/eclass parsing (found, else fetched)
- **zlib** — ZIP/PK3 archive decompression
- **sourcepp** — Source Engine format support (fetched; optional via `RADIANT_SUPPORT_SOURCE`)
- **assimp** — generic model import (fetched; optional via `RADIANT_USE_ASSIMP`)

<!-- MANUAL: Add project-specific notes below this line; preserved on regeneration. -->
