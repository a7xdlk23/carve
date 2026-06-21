<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# imagevtf

## Purpose
Source Engine **VTF** (Valve Texture Format) loader module, using
`sourcepp::vtfpp`. Built as the `imagevtf` shared library. **Conditional**: only
built when `RADIANT_SUPPORT_SOURCE` is ON.

## Key Files
| File | Description |
|------|-------------|
| `vtf.cpp` / `vtf.h` | VTF parsing/decoding (via vtfpp) |
| `imagevtf.cpp` / `imagevtf.h` | Module entry / format registration |

## For AI Agents
- Implements `include/iimage.h`; links `sourcepp::vtfpp` (see `cmake/modules.cmake`).
- Per the README, loose-VTF loading has a known bug — verify both packed (VPK) and
  loose VTF paths when editing.
- Gate new code behind `RADIANT_SUPPORT_SOURCE`.

## Dependencies
### Internal
- `include/iimage.h`, `libs/imagelib.h`.
### External
- `sourcepp::vtfpp`.

<!-- MANUAL: -->
