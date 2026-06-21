<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# bobtoolz

## Purpose
**Legacy plugin — not currently built** (no `add_plugin(bobtoolz ...)` in
`cmake/plugins.cmake`; the sources still target the old GTK API). It is the large
NetRadiant brush/CSG utility toolset: procedural shapes (doors, stairs, polygons),
brush validity checking, auto-caulk, intersection tools, tree/path plotters, and
BSP/portal/visibility viewers. Kept as a porting reference.

## Key Files
| File | Description |
|------|-------------|
| `bobToolz-GTK.cpp` / `.h`, `bobToolz.h` | Plugin entry and GTK UI binding (needs Qt6 port) |
| `DEntity/DBrush/DPatch/DPlane/DPoint/DShape/DWinding.{cpp,h}` | In-memory map geometry classes |
| `DMap.cpp/.h`, `bsploader.cpp/.h` | Map/BSP loading and entity extraction |
| `DBobView/DTrainDrawer/DVisDrawer/DTreePlanter.{cpp,h}`, `cportals.cpp`/`CPortals.h` | Renderable overlays (paths, vis, portals, tree planter) |
| `shapes.cpp/.h` | Procedural shape generation (doors/stairs/walls) |
| `funchandlers*.cpp`, `ctfToolz-GTK.cpp` | Command handlers (incl. CTF tools) |
| `visfind.cpp/.h`, `lists.cpp/.h`, `misc.cpp/.h`, `ScriptParser.cpp/.h` | PVS find, helpers, script parsing |
| `*.def`, `*.rc`, `resource*.h`, `StdAfx.*` | Windows module/resource files |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `dialogs/` | Per-feature dialogs (Door, Stair, Polygon, AutoCaulk, Intersect, TextureReset, PathPlotter, About) — also GTK |
| `bt/` | Script templates (`door-tex`, `ctf-*`, element configs) |
| `bitmaps/`, `res/`, `txt/` | Icons, Windows resources, readme/changelog |

## For AI Agents
- To revive this plugin it must be **ported to Qt6** and added to
  `cmake/plugins.cmake`. The `*-GTK.cpp` / `dialogs-gtk.cpp` files are the parts
  that need rewriting. Toolbar icons already exist under
  `setup/data/tools-png/plugins/bitmaps/` (the `bobtoolz_*` PNGs).
- Treat as reference; don't expect it to compile against the current tree as-is.

## Dependencies
### Internal (when ported)
- `include/qerplugin.h`, brush/patch/map helpers in `libs/`.
### External (legacy)
- GTK2 (to be replaced with Qt6).

<!-- MANUAL: -->
