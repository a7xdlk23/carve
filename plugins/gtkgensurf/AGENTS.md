<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# gtkgensurf

## Purpose
**Disabled plugin** — present in `cmake/plugins.cmake` but wrapped in `if(0)`, so
it is **not built**. A procedural terrain/surface generator (heightfields, noise,
with Heretic 2 extensions) that produces brush/patch geometry. Kept for revival.

## Key Files
| File | Description |
|------|-------------|
| `gensurf.cpp` / `gensurf.h` | Plugin entry and surface generation dispatch |
| `genmap.cpp` | Map/geometry generation |
| `gendlgs.cpp` / `gendlgs.h` | Parameter dialogs |
| `dec.cpp`, `face.cpp`, `bitmap.cpp`, `heretic.cpp` | Surface eval, faces, heightmaps, Heretic 2 extras |
| `view.cpp`, `font.cpp` | GL preview |
| `triangle.c` / `triangle.h` | Triangle-mesh generation (C) |
| `plugin.cpp`, `gensurf.def`, `CHANGES` | Registration / def / changelog |

## For AI Agents
- To enable: remove the `if(0)` guard in `cmake/plugins.cmake` and port any
  remaining GTK code to Qt6. It links `mathlib` and Qt6 and uses C-warning
  suppressions for `triangle.c`.
- The target name is `gensurf` (directory is `gtkgensurf`).

## Dependencies
### Internal
- `libs/mathlib` (when built).
### External
- Qt6 (and legacy GTK remnants).

<!-- MANUAL: -->
