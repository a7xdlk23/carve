<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# string

## Purpose
First-party string types, including a pooled/interned string implementation used
to deduplicate the many repeated names (texture/shader/entity-class names) the
editor handles.

## Key Files
| File | Description |
|------|-------------|
| `string.h` / `string.cpp` | Core string class and helpers |
| `pooledstring.h` / `pooledstring.cpp` | Interned/pooled string storage |
| `stringfwd.h` | Forward declarations |

## For AI Agents

### Working In This Directory
- Header-first with small `.cpp` units; included directly.
- Additional string formatting/IO helpers live as loose headers in `libs/`
  (`str.h`, `stringio.h`, `convert.h`).

## Dependencies
### Internal
- `libs/generic/`, `libs/memory/`.

<!-- MANUAL: -->
