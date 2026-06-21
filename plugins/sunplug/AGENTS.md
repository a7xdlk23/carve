<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# sunplug

## Purpose
**Built plugin.** A small helper for sky/sun light setup — adds/configures sun
lighting entities/keys for radiosity lighting. Built as the `sunplug` shared
library.

## Key Files
| File | Description |
|------|-------------|
| `sunplug.cpp` / `sunplug.h` | Plugin entry, dialog, and sun-key logic |
| `sunplug.def` | Windows module def |

## For AI Agents
- Single-unit plugin; source list in `cmake/plugins.cmake` (`add_plugin(sunplug ...)`).
  Links Qt6. Good minimal template for a new small plugin.

## Dependencies
### Internal
- `include/qerplugin.h`, `include/ientity.h`.
### External
- Qt6.

<!-- MANUAL: -->
