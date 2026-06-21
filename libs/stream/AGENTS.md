<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# stream

## Purpose
Header-only text/byte stream classes implementing the `include/itextstream.h`
interfaces over files, memory, and strings.

## Key Files
| File | Description |
|------|-------------|
| `textstream.h` | Base text input/output stream types |
| `filestream.h` | File-backed streams |
| `textfilestream.h` | Text file streams |
| `memstream.h` | In-memory byte streams |
| `stringstream.h` | String-backed streams |

## For AI Agents

### Working In This Directory
- Header-only; included directly. Implements `include/itextstream.h` /
  `include/idatastream.h` concepts.

## Dependencies
### Internal
- `include/itextstream.h`, `include/idatastream.h`; `libs/os/` for file paths.

<!-- MANUAL: -->
