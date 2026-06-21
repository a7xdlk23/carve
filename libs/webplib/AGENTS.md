<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# webplib (vendored)

## Purpose
WebP image decoding via a vendored single-header codec (`tiny_webp.h`). Built into
the `webplib` static library; used by the `image` module and `q3map2`. Third-party
— treat as an upstream import.

## Key Files
| File | Description |
|------|-------------|
| `webplib.cpp` / `webplib.h` | Project wrapper compiled into the `webplib` library |
| `tiny_webp.h` | Vendored single-header WebP decoder |

## For AI Agents
- **Do not edit** `tiny_webp.h` for features; re-vendor instead.
- Built via `add_library(webplib ...)` in the top-level `CMakeLists.txt`.

## Dependencies
### Internal
- Consumed by `modules/image/`, `tools/quake3/q3map2/`.

<!-- MANUAL: -->
