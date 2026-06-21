<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# l_net

## Purpose
Cross-platform TCP socket layer (idTech heritage), built into the `l_net` static
library. It backs the editor's **BSP monitor** — the socket link over which the
compile tools (`q3map2`, `q2map`, …) report progress back to the editor
(`radiant/watchbsp.cpp`, `radiant/sockets.cpp`).

## Key Files
| File | Description |
|------|-------------|
| `l_net.c` / `l_net.h` | Portable socket API |
| `l_net_wins.c` / `l_net_wins.h` | Windows (Winsock) implementation |

## For AI Agents

### Working In This Directory
- C library; keep it C-compatible. Built as `l_net` — add `.c` files to the
  `add_library(l_net ...)` list in the top-level `CMakeLists.txt`.
- On Windows, consumers must link `ws2_32` (the CMake targets already do).
- Linked by the editor and the `q3map2`/`q2map`/`qdata3`/`h2data` tools.

## Dependencies
### External
- Platform sockets; `ws2_32` on Windows, `network` on Haiku.

<!-- MANUAL: -->
