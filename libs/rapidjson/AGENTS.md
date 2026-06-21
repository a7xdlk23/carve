<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# rapidjson (vendored)

## Purpose
Vendored copy of [RapidJSON](https://github.com/Tencent/rapidjson), a header-only
C++ JSON library. Used for JSON read/write where needed (e.g. q3map2's
`convert_json`). Third-party — treat as an upstream import.

## Key Files
| File | Description |
|------|-------------|
| `document.h`, `reader.h`, `writer.h`, `prettywriter.h` | Core DOM, parser, and writers |
| `schema.h`, `pointer.h`, `uri.h` | JSON Schema, JSON Pointer, URI |
| `stream.h`, `*stream*.h`, `encodings.h`, `allocators.h` | Streams, encodings, allocators |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `error/` | Error codes and messages |
| `internal/` | Internal numeric/string helpers (dtoa, itoa, bignum, regex) |
| `msinttypes/` | MSVC `stdint.h`/`inttypes.h` shims |

## For AI Agents
- **Do not edit** for project features; update only by re-vendoring upstream.
- Header-only; no CMake target. Subdirectories are upstream internals (not
  documented per-file here).

<!-- MANUAL: -->
