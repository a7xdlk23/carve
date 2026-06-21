<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# mapvmf

## Purpose
Reader/writer module for the Valve **`.vmf`** map format (Source Engine / Hammer),
parsed via `sourcepp::kvpp` (KeyValues). This is the flagship format for this
fork. Built as the `mapvmf` shared library. **Conditional**: only built when
`RADIANT_SUPPORT_SOURCE` is ON.

## Key Files
| File | Description |
|------|-------------|
| `plugin.cpp` / `plugin.h` | VMF import/export and module registration |

## For AI Agents
- Implements `include/imap.h`; links `sourcepp::kvpp` (see `cmake/modules.cmake`).
- The README documents current VMF limitations and **!!hard warnings!!** (alpha
  state; discards displacements/visgroups/cordons/cameras/some metadata; special
  handling needed for Source entity I/O keys starting with `On`). Preserve those
  caveats and the "don't merge `On*` outputs" rule when editing save logic.
- Gate new code behind `RADIANT_SUPPORT_SOURCE`.

## Dependencies
### Internal
- `include/imap.h`, `libs/maplib.h`.
### External
- `sourcepp::kvpp`.

<!-- MANUAL: -->
