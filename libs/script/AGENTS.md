<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# script

## Purpose
Header-only tokeniser/token-writer for parsing the project's text formats
(`.map`, `.shader`, `.def`, and similar Quake-style scripts). Implements the
`include/iscriplib.h` tokeniser concepts.

## Key Files
| File | Description |
|------|-------------|
| `scripttokeniser.h` | Tokeniser (splits script text into tokens) |
| `scripttokenwriter.h` | Token writer (emits tokens with correct quoting/spacing) |

## For AI Agents

### Working In This Directory
- Header-only; included directly. Reuse this for any new text-format parsing
  instead of ad-hoc tokenizing.

## Dependencies
### Internal
- `include/iscriplib.h`, `libs/stream/`.

<!-- MANUAL: -->
