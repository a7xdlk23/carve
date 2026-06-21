<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# memory

## Purpose
First-party allocation helpers — a small allocator abstraction used by the
container/string utilities.

## Key Files
| File | Description |
|------|-------------|
| `allocator.h` / `allocator.cpp` | Allocator helpers / new-delete wrappers |

## For AI Agents

### Working In This Directory
- Header-first with a small `.cpp`; included directly. Keep low-level and
  dependency-free.

## Dependencies
### Internal
- Used by `libs/container/`, `libs/string/`.

<!-- MANUAL: -->
