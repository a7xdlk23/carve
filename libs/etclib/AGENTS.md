<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# etclib (vendored)

## Purpose
ETC (Ericsson Texture Compression) codec (C). Built into the `etclib` static
library; used by the `image` module and `q3map2` to decode ETC-compressed
textures (e.g. inside KTX/PVR/PKM). Third-party — treat as an upstream import.

## Key Files
| File | Description |
|------|-------------|
| `etclib.c` / `etclib.h` | ETC (de)compression |

## For AI Agents
- C library built as `etclib`. Keep C-compatible; prefer re-vendoring over edits.

## Dependencies
### Internal
- Consumed by `modules/image/`, `tools/quake3/q3map2/`.

<!-- MANUAL: -->
