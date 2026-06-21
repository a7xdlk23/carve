<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# assmodel

## Purpose
Generic model loader module backed by **Assimp** — imports the wide range of
formats Assimp supports (FBX, glTF, OBJ, DAE, …) that aren't covered by the
native `model` module. Built as the `assmodel` shared library. **Conditional**:
only built when `RADIANT_USE_ASSIMP` is ON.

## Key Files
| File | Description |
|------|-------------|
| `model.cpp` / `model.h` | Assimp import → editor model conversion |
| `mdlimage.cpp` / `mdlimage.h` | Material/texture extraction for imported models |
| `plugin.cpp` / `plugin.h` | Module registration |

## For AI Agents
- Implements `include/imodel.h`; links `assimp` and Qt6 (see `cmake/modules.cmake`).
- Assimp's MD2/MD3/MD5/MDC/MDL/HMP importers are disabled in the top-level CMake
  (those are handled by the native `model` module) — don't rely on them here.
- Gate new code behind `RADIANT_USE_ASSIMP`; note `q3map2`'s build is also tied to
  this option.

## Dependencies
### Internal
- `include/imodel.h`.
### External
- assimp, Qt6.

<!-- MANUAL: -->
