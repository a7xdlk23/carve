<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# prtview

## Purpose
**Built plugin.** Loads compiled **`.prt`** portal files and renders the portal
geometry/clusters in the viewports — a tool for debugging PVS/visibility after a
compile. Built as the `prtview` shared library.

## Key Files
| File | Description |
|------|-------------|
| `prtview.cpp` / `prtview.h` | Plugin entry, render integration |
| `portals.cpp` / `portals.h` | `.prt` parsing and portal geometry/rendering |
| `LoadPortalFileDialog.cpp/.h` | File selection dialog |
| `ConfigDialog.cpp/.h` | Display settings (colors, 2D/3D options) |
| `AboutDialog.cpp/.h` | About dialog |
| `PrtView.def`, `res/PrtView.rc2` | Windows module def / resources |

## For AI Agents
- Source list in `cmake/plugins.cmake` (`add_plugin(prtview ...)`); links Qt6.
- Portal files come from the compilers (q3map2/q2map/mbspc `prtfile.*`); the
  format must stay in sync with those producers.

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `res/` | Windows resource script |

## Dependencies
### Internal
- `include/qerplugin.h`, `include/irender.h`, `libs/`.
### External
- Qt6.

<!-- MANUAL: -->
