<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# shaders

## Purpose
The shader/material system module. Parses Quake-style `.shader` scripts and, when
`RADIANT_SUPPORT_SOURCE` is ON, Source `.vmt` materials (via `sourcepp::kvpp`);
otherwise `NO_SOURCEVMT` is defined. It maps texture/material names to render and
surface properties (flags like sky/clip/nodraw/areaportal). Built as the
`shaders` shared library; links `commandlib` and LibXml2.

## Key Files
| File | Description |
|------|-------------|
| `shaders.cpp` / `shaders.h` | Shader/material parsing and the shader registry |
| `plugin.cpp` / `plugin.h` | Module registration |

## For AI Agents
- Implements `include/ishaders.h`; the editor's surface flags and the q3map2
  `shader_*` tool textures (caulk/clip/nodraw/hint) flow through here.
- The `RADIANT_SUPPORT_SOURCE` / `NO_SOURCEVMT` switch and the `commandlib` +
  `LibXml2` links are in `cmake/modules.cmake`. Keep a non-Source build working.

## Dependencies
### Internal
- `include/ishaders.h`, `libs/shaderlib.h`, `libs/commandlib.*`, `libs/xml/`.
### External
- LibXml2; `sourcepp::kvpp` (conditional).

<!-- MANUAL: -->
