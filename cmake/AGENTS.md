<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# cmake

## Purpose
Build-system modules included by the top-level `CMakeLists.txt`. They define the
`add_module()`/`add_plugin()` helpers for the loadable libraries and the gamepack
generator. `CMAKE_MODULE_PATH` points here, so `include(<name>)` resolves to
`cmake/<name>.cmake`.

## Key Files
| File | Description |
|------|-------------|
| `modules.cmake` | `add_module()` helper + all `modules/` shared-library targets |
| `plugins.cmake` | `add_plugin()` helper + the built `plugins/` targets |
| `gamepacks.cmake` | `radiant_add_gamepack()` generator; includes `gamepacks/source` (+ optional `gamepacks/user`) |
| `FindMath.cmake` | Locates the C math library (legacy; retained) |
| `default_build_menu_source.xml` | Default compile/build menu (vbsp/vvis/vrad) installed into the CS:S gamepack |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `gamepacks/` | Gamepack definitions — `source.cmake` (the single `css` Counter-Strike: Source pack) |

## For AI Agents
- Module/plugin source lists are **explicit** here — adding a file does nothing
  until it is listed in the matching target.
- The idTech compile-tool builds (`q3map2`, `mbspc`, `q2map`, `qdata3`, `h2data`)
  and the GoldSrc gamepack/build-menu were removed in the CS:S conversion.
- The `.game` config is generated into `install/gamepacks/css.game/` at configure
  time; CS:S maps compile with the external Source SDK tools referenced by
  `default_build_menu_source.xml`.
- Source/Assimp features are gated by `RADIANT_SUPPORT_SOURCE` (always ON) and
  `RADIANT_USE_ASSIMP`.

## Dependencies
### External
- CMake ≥ 3.21; uses `FetchContent` (top-level) for sourcepp, assimp, libxml2.

<!-- MANUAL: -->
