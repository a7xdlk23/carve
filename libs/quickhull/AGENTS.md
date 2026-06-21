<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# quickhull (vendored)

## Purpose
Vendored [QuickHull](https://github.com/akuukka/quickhull) implementation — 3D
convex hull computation. Built into the `quickhull` static library and linked by
the editor (used for hull/geometry operations). Third-party — treat as upstream.

## Key Files
| File | Description |
|------|-------------|
| `QuickHull.cpp` / `QuickHull.hpp` | The Quickhull algorithm (the compiled unit) |
| `ConvexHull.hpp`, `HalfEdgeMesh.hpp`, `MathUtils.hpp` | Result hull, half-edge mesh, math helpers |
| `README.md` | Upstream readme |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `Structs/` | Mesh/Plane/Pool/Ray/Vector3 support structs |
| `Tests/` | Upstream unit tests (not part of the editor build) |

## For AI Agents
- **Do not edit** for project features; re-vendor from upstream instead.
- Built as `quickhull` via `add_library(quickhull STATIC libs/quickhull/QuickHull.cpp)`
  in the top-level `CMakeLists.txt`.

<!-- MANUAL: -->
