<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# ddslib (vendored)

## Purpose
DDS (DirectDraw Surface) texture format I/O (C). Built into the `ddslib` static
library; used by the `image` module, `crnlib`, and `q3map2`. Third-party — treat
as an upstream import.

## Key Files
| File | Description |
|------|-------------|
| `ddslib.c` / `ddslib.h` | DDS read/decode routines |

## For AI Agents
- C library built as `ddslib` (public include dir). Keep C-compatible; prefer
  re-vendoring over local edits.

## Dependencies
### Internal
- Consumed by `libs/crnlib/`, `modules/image/`, `tools/quake3/q3map2/`.

<!-- MANUAL: -->
