<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# debugging

## Purpose
First-party assertion and debug-output macros used across the codebase
(`ASSERT_MESSAGE`, global error/debug streams, etc.).

## Key Files
| File | Description |
|------|-------------|
| `debugging.h` / `debugging.cpp` | Assertion macros and debug-output helpers |

## For AI Agents

### Working In This Directory
- Assertions are typically compiled out in release (`_DEBUG` gating); don't put
  side effects inside `ASSERT_*`.
- Header-first with a small `.cpp`; included directly.

## Dependencies
### Internal
- `include/itextstream.h` (global streams).

<!-- MANUAL: -->
