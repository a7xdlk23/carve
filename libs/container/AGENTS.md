<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# container

## Purpose
First-party generic container/collection templates used throughout the codebase
where the STL is avoided or a specialized layout is wanted.

## Key Files
| File | Description |
|------|-------------|
| `array.h` / `array.cpp` | Fixed/heap array container |
| `hashtable.h` / `hashtable.cpp` | Hash table |
| `hashfunc.h` | Hash functions for keys used by `hashtable` |
| `cache.h` | Keyed cache (used for resource/model caching) |
| `stack.h` | Stack container |
| `container.h` | Common container includes/typedefs |

## For AI Agents

### Working In This Directory
- Header-first utility; included directly by consumers (not a standalone CMake
  target). Keep templates header-clean and dependency-free.

## Dependencies
### Internal
- `libs/generic/` (callbacks/utilities), `libs/memory/`.

<!-- MANUAL: -->
