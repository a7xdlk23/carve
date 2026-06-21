<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# meshtex

## Purpose
**Built plugin.** Precise texture alignment/scaling tools for **patch meshes** —
apply uniform or directional scaling and general per-row/column texture functions
across a bezier patch. Built as the `meshtex` shared library. Originally by Joel
Baxter.

## Key Files
| File | Description |
|------|-------------|
| `PluginModule.cpp/.h`, `PluginRegistration.cpp` | Plugin module + Radiant API registration |
| `MeshEntity.cpp/.h`, `MeshVisitor.cpp/.h` | Patch-mesh traversal and texture operations |
| `GenericPluginUI.cpp/.h`, `GenericMainMenu.cpp/.h`, `MainMenu.cpp/.h` | UI framework + menu |
| `GeneralFunctionDialog.cpp/.h`, `GetInfoDialog.cpp/.h`, `SetScaleDialog.cpp/.h`, `GenericDialog.cpp/.h`, `PluginUI.cpp/.h` | Dialogs |
| `RefCounted.cpp/.h`, `AllocatedMatrix.h`, `UtilityMacros.h`, `*Messages.h` | Support utilities |
| `PluginProperties.h`, `resource.h`, `meshtex.def` | Metadata / Windows resources |

## For AI Agents
- **Authoritative compiled set** is `add_plugin(meshtex SOURCES ...)` in
  `cmake/plugins.cmake`; links Qt6. The directory also contains upstream project
  files (`meshtex.sln`, `*.vcproj`, `Doxyfile`, `mainpage.dox`) that are not part
  of this build.
- Operates on patches via `include/ipatch.h`.

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `docs/` | Upstream documentation archive (`docs.7z`) |

## Dependencies
### Internal
- `include/qerplugin.h`, `include/ipatch.h`.
### External
- Qt6.

<!-- MANUAL: -->
