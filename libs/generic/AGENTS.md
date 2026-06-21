<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# generic

## Purpose
Core first-party generic-programming primitives — the callback/closure system,
reference and reference-counting wrappers, and small type utilities that the rest
of the codebase is built on. Heavily used for the observer/callback wiring in the
editor (selection, undo, preferences).

## Key Files
| File | Description |
|------|-------------|
| `callback.h` / `callback.cpp` | Type-erased callbacks/closures (`Callback`, `MemberCaller`, etc.) |
| `referencecounted.h` | Reference-counted smart pointers |
| `reference.h` | Non-owning reference wrapper |
| `object.h` / `object.cpp` | Base object helpers |
| `functional.h` | Function-object utilities |
| `enumeration.h`, `bitfield.h` | Enum and bit-flag helpers |
| `constant.h` / `constant.cpp`, `static.h` / `static.cpp` | Constant and static-initialization helpers |
| `arrayrange.h`, `vector.h` | Range and small-vector helpers |

## For AI Agents

### Working In This Directory
- This is foundational — the callback types here back most signals/observers.
  Changes ripple widely; prefer additive changes.
- Included directly (header-first; small `.cpp` units), not a standalone target.

## Dependencies
### Internal
- Used by nearly everything; depends on little itself.

<!-- MANUAL: -->
