<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# modules

## Purpose
Loadable **format-handler libraries** for Carve. Each subdirectory builds a single
shared library (`.dll`/`.so`, no `lib` prefix) into `install/modules/`, which the
editor discovers and loads at runtime. Modules implement the `include/` interfaces
for the formats a CS:S surf map needs: VMF maps, VTF textures, VPK archives, MDL
models, the shader/material system, the virtual filesystem, and the entity system.

Declared in `cmake/modules.cmake` via the `add_module()` helper. Source Engine
modules build when `RADIANT_SUPPORT_SOURCE` is ON (the default; Carve is
Source-only).

## Subdirectories
| Directory | Module | Build condition | Purpose |
|-----------|--------|-----------------|---------|
| `entity/` | `entity` | always | Entity scene-node types, properties, rendering, filtering, and I/O |
| `mapvmf/` | `mapvmf` | `RADIANT_SUPPORT_SOURCE` | Valve `.vmf` map read/write (via `sourcepp::kvpp`) — the map format |
| `imagevtf/` | `imagevtf` | `RADIANT_SUPPORT_SOURCE` | Source `VTF` texture loader (via `sourcepp::vtfpp`) |
| `archivevpk/` | `archivevpk` | `RADIANT_SUPPORT_SOURCE` | Source `VPK` archive reader (via `sourcepp::vpkpp`) || `image/` | `image` | always | General raster loader: BMP/TGA/PCX/DDS/KTX/CRN/WebP/STB (PNG/JPG) |
| `model/` | `model` | always | MDL models incl. Source MDL (via `sourcepp::mdlpp`); also MD2/3/5/MDC |
| `assmodel/` | `assmodel` | `RADIANT_USE_ASSIMP` | Generic model import via Assimp (OBJ/FBX/glTF/…) |
| `shaders/` | `shaders` | always | Material system: Source `.vmt` (via `sourcepp::kvpp`) + Quake `.shader` |
| `vfspk3/` | `vfspk3` | always | Virtual filesystem: mounts the game dir + archives (via `filematch`, LibXml2) |

## For AI Agents
- Every module has a `plugin.cpp` registering it with the module system.
- **Adding/removing source files requires editing `cmake/modules.cmake`** (the
  `add_module(<name> SOURCES ...)` lists), not just adding files.
- Carve is Source-only: `RADIANT_SUPPORT_SOURCE` is effectively always ON. The
  CS:S conversion removed the non-Source modules (PAK/WAD archives; Q2/HL/PVR
  texture loaders; Quake `.map` and native XML map formats).
- Modules build with `QT_NO_KEYWORDS` and `-fno-rtti` like the editor.

## Dependencies
### Internal
- `include/` interfaces; `libs/` helpers (`imagelib.h`, `archivelib.h`,
  `shaderlib.h`, `filematch`, `ddslib`/`etclib`/`crnlib`/`webplib` for `image`).
### External
- Qt6 (`entity`, `assmodel`, `model`), LibXml2 (`shaders`, `vfspk3`), assimp
  (`assmodel`), and `sourcepp::*` (Source modules).

<!-- MANUAL: -->
