<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# crnlib (vendored)

## Purpose
Crunch (`.crn`) compressed-texture decompression. Built into the `crnlib` static
library (depends on `ddslib`) and used by the `image` module and `q3map2` to read
CRN textures. Third-party — treat as an upstream import.

## Key Files
| File | Description |
|------|-------------|
| `crnlib.cpp` / `crnlib.h` | Project wrapper compiled into the `crnlib` library |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `crunch/inc/` | Upstream Crunch headers (`crn_decomp.h`, `crnlib.h`, `dds_defs.h`, `crn_defs.h`) |

## For AI Agents
- **Do not edit** the upstream `crunch/` headers for features; update by re-vendoring.
- Built via `add_library(crnlib ...)` in the top-level `CMakeLists.txt`; links `ddslib`.

## Dependencies
### Internal
- `libs/ddslib/`.

<!-- MANUAL: -->
