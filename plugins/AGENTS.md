<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# plugins

## Purpose
Optional editor feature plugins for Carve. Each builds a shared library into
`install/plugins/` and is loaded at runtime, adding editor functionality (tools,
dialogs, viewers) via the `qerplugin.h` interface. Declared in
`cmake/plugins.cmake` via `add_plugin()`.

## Subdirectories
| Directory | Build status | Purpose |
|-----------|--------------|---------|
| `brushexport/` | **Built** | Export selected brushes to Wavefront `.obj` |
| `prtview/` | **Built** | Load/visualize `.prt` portal files (PVS / leak debugging) |
| `sunplug/` | **Built** | Sky/sun light setup helper |
| `meshtex/` | **Built** | Patch-mesh texture alignment/scaling toolset |
| `bobtoolz/` | Not built — porting source | Brush/CSG/shape toolset (doors, stairs, polygons, autocaulk). Retained as a reference for the **M3** surf ramp generator |
| `gtkgensurf/` | Disabled (`if(0)`) — porting source | Procedural surface generator. Retained as a reference for **M3** ramp/terrain helpers |

## For AI Agents
- To ship a plugin it needs an `add_plugin(<name> SOURCES ...)` block in
  `cmake/plugins.cmake`. `bobtoolz` and `gtkgensurf` are kept on disk **only** as
  porting references for the surf ramp tools (M3) and still target the old GTK
  API — delete them once M3 lands.
- The CS:S conversion removed the irrelevant/legacy plugins (`ufoaiplug`,
  `bkgrnd2d`, `camera`, `hydratoolz`, `shaderplug`).
- Built plugins link Qt6 and follow `QT_NO_KEYWORDS` / `-fno-rtti`.

## Dependencies
### Internal
- `include/qerplugin.h` and other `include/` interfaces; `libs/` helpers.
### External
- Qt6.

<!-- MANUAL: -->
