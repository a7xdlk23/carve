<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# brushexport

## Purpose
**Built plugin.** Exports the selected brushes to a Wavefront **`.obj`** file, with
options for grouping/collapsing geometry (all / by material / none) and material
output. Built as the `brushexport` shared library.

## Key Files
| File | Description |
|------|-------------|
| `export.cpp` / `export.h` | Core OBJ export and collapse-mode logic |
| `callbacks.cpp` / `callbacks.h` | Dialog callbacks and output path handling |
| `interface.cpp` | Export dialog construction |
| `plugin.cpp` / `plugin.h` | Plugin registration (`qerplugin`) |
| `brushexport.def` | Windows module def |

## For AI Agents
- Source list is in `cmake/plugins.cmake` (`add_plugin(brushexport ...)`); links Qt6.
- Reads brushes/faces through the plugin API (`include/qerplugin.h`) and brush helpers.

## Dependencies
### Internal
- `include/qerplugin.h`, `include/ibrush.h`, `libs/`.
### External
- Qt6.

<!-- MANUAL: -->
