<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# filematch

## Purpose
Glob/wildcard filename matching (C), built into the `filematch` static library.
Used by the virtual filesystem (`modules/vfspk3`) and `q3map2` to match files
within archives and directories.

## Key Files
| File | Description |
|------|-------------|
| `filematch.c` / `filematch.h` | Wildcard (`*`/`?`) path matching |

## For AI Agents

### Working In This Directory
- C library built as `filematch` (`target_include_directories ... PUBLIC`). Keep
  it C-compatible.

## Dependencies
### Internal
- Consumed by `modules/vfspk3/` and `tools/quake3/q3map2/`.

<!-- MANUAL: -->
