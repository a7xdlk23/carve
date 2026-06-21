<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# math

## Purpose
Modern C++ geometric math headers: vectors, matrices, quaternions, planes,
bounding boxes, frustums, and curves. This is the primary math used by the
editor's C++ code (distinct from the legacy C `libs/mathlib/`).

## Key Files
| File | Description |
|------|-------------|
| `vector.h` / `vectorfwd.h` | Vector2/3/4 types and operators |
| `matrix.h` | 4×4 matrices and transforms |
| `quaternion.h` | Quaternion rotations |
| `plane.h` | Plane equations |
| `aabb.h` | Axis-aligned bounding boxes |
| `frustum.h` | View frustum and culling |
| `line.h`, `curve.h` | Line and parametric-curve helpers |
| `expression.h` / `expression.cpp` | Numeric expression evaluation |
| `pi.h` | Constants |

## For AI Agents

### Working In This Directory
- Header-only (one small `.cpp` for `expression`); included directly. Widely
  included — keep changes additive and inline-friendly.
- For brush/patch/winding geometry, reuse these types rather than introducing new
  vector/matrix classes.

## Dependencies
### Internal
- `libs/generic/`. Compare with `libs/mathlib/` (C) and `libs/mathlib.h`.

<!-- MANUAL: -->
