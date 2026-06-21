<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# mathlib

## Purpose
Legacy **C** math routines (idTech heritage), built into the `mathlib` static
library by the top-level `CMakeLists.txt`. Used where C linkage or the classic
routines are needed. The public declarations are in `libs/mathlib.h`. Distinct
from the modern C++ `libs/math/`.

## Key Files
| File | Description |
|------|-------------|
| `mathlib.c` | Core C math routines |
| `m4x4.c` | 4×4 matrix operations |
| `bbox.c` | Bounding-box math |
| `line.c` | Line math |
| `ray.c` | Ray math |

## For AI Agents

### Working In This Directory
- Built as the `mathlib` static lib — add new `.c` files to the `add_library(mathlib ...)`
  list in the top-level `CMakeLists.txt`.
- C, not C++; keep it C-compatible. New C++ math should go in `libs/math/`.

## Dependencies
### Internal
- Declared by `libs/mathlib.h`; consumed by parts of the editor and the
  `gensurf` plugin.

<!-- MANUAL: -->
