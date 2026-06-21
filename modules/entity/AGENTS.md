<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# entity

## Purpose
The entity system module — the largest module. It provides the concrete
scene-graph node types for every entity flavour (point, brush/group, model,
light, Doom 3 group) plus the property handlers (origin, angles, rotation, scale,
colour), targeting/naming, skins, and entity-level filtering and rendering. Built
as the `entity` shared library (links Qt6 for rendering).

## Key Files
| File | Description |
|------|-------------|
| `entity.cpp` / `entity.h` | Entity module entry / common entity behavior |
| `generic.cpp` | Generic point entity |
| `group.cpp`, `doom3group.cpp` | Brush/group entities and the Doom 3 group variant |
| `eclassmodel.cpp` | Entity whose model comes from its entity class |
| `model.cpp`, `miscmodel.cpp`, `modelskinkey.cpp`, `skincache.cpp` | Model entities, `model`/skin keys, skin cache |
| `light.cpp` | Light entity (radius/colour rendering) |
| `origin.cpp`, `angle.cpp`, `angles.cpp`, `rotation.cpp`, `scale.cpp`, `colour.cpp` | Transform/property key handlers |
| `namedentity.cpp`, `targetable.cpp`, `namekeys.cpp`, `keyobservers.cpp` | Name/target tracking and key-change observers |
| `filters.cpp` | Entity visibility filtering |
| `curve.cpp` | Curve (Doom 3 style) support |
| `plugin.cpp` / `plugin.h` | Module registration |

## For AI Agents
- Implements `include/ientity.h` (and uses `include/ieclass.h`, `iscenegraph.h`,
  `irender.h`, `iselection.h`). This is where entity rendering/selection/transform
  behavior lives — distinct from the editor's `radiant/entity*.cpp` UI panels.
- **Authoritative compiled set** is `add_module(entity SOURCES ...)` in
  `cmake/modules.cmake`; several files here (e.g. `curve`, `keyobservers`,
  `namekeys`) are pulled in via includes rather than listed directly — check
  before assuming a file is or isn't compiled standalone.
- Heavy user of `libs/entitylib.h`, `libs/eclasslib.h`, and the callback/observer
  utilities in `libs/generic`/`libs/signal`.

## Dependencies
### Internal
- `include/ientity.h`, `include/ieclass.h`, `libs/entitylib.h`, `libs/eclasslib.h`.
### External
- Qt6 (rendering).

<!-- MANUAL: -->
