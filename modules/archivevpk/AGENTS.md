<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# archivevpk

## Purpose
Module that mounts Source Engine **VPK** archives into the virtual filesystem,
using `sourcepp::vpkpp`. Built as the `archivevpk` shared library. **Conditional**:
only built when `RADIANT_SUPPORT_SOURCE` is ON.

## Key Files
| File | Description |
|------|-------------|
| `archive.cpp` / `archive.h` | `Archive`/`ArchiveFile` implementation over a VPK (via vpkpp) |
| `plugin.cpp` / `plugin.h` | Module registration |

## For AI Agents
- Implements `include/iarchive.h`; links `sourcepp::vpkpp` (see `cmake/modules.cmake`).
- Per the README: current code assumes `_dir.vpk` naming and modern VPK layouts;
  GMA/GCF are handled by sourcepp as well — keep Source archive quirks in mind
  (old SDK-2006 layouts, VTMB naming) when editing.
- Gate any new code behind `RADIANT_SUPPORT_SOURCE`.

## Dependencies
### Internal
- `include/iarchive.h`, `libs/archivelib.h`.
### External
- `sourcepp::vpkpp`.

<!-- MANUAL: -->
