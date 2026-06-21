<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# model

## Purpose
Native model loader module for idTech and GoldSrc/Source formats. Built as the
`model` shared library. Handles MD2/MD3/MD5/MDC/MDL and, when
`RADIANT_SUPPORT_SOURCE` is ON, Source MDL via `sourcepp::mdlpp` (otherwise
`NO_SOURCEMDL` is defined and `sourcemdl.cpp` is inert).

## Key Files
| File | Description |
|------|-------------|
| `md2.cpp` / `md2.h` | Quake 2 MD2 |
| `md3.cpp` / `md3.h`, `md3normals.cpp` | Quake 3 MD3 and its normal table |
| `md5.cpp` / `md5.h` | Doom 3 / Quake 4 MD5 (skeletal) |
| `mdc.cpp` / `mdc.h` | RTCW MDC |
| `mdl.cpp` / `mdl.h`, `mdlformat.cpp`, `mdlnormals.cpp` | Quake/GoldSrc MDL + format/normal helpers |
| `sourcemdl.cpp` / `sourcemdl.h` | Source Engine MDL (via `sourcepp::mdlpp`, conditional) |
| `mdlimage.cpp` / `mdlimage.h` | Model skin/texture extraction |
| `model.cpp` / `model.h`, `ident.h` | Loader dispatch + format identification |
| `plugin.cpp` / `plugin.h` | Module registration |

## For AI Agents
- Implements `include/imodel.h` (and `include/modelskin.h`). Generic formats
  (FBX/glTF/OBJ/…) are handled by the separate `assmodel` module instead.
- Per the README, MDL loading has a known "first surface only" limitation — keep
  multi-surface handling in mind.
- Source list and the `NO_SOURCEMDL` / `sourcepp::mdlpp` switch are in
  `cmake/modules.cmake`.

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `doc/` | Format notes (`md3-design.txt`) |

## Dependencies
### Internal
- `include/imodel.h`, `libs/` model/skin helpers.
### External
- Qt6; `sourcepp::mdlpp` (conditional).

<!-- MANUAL: -->
