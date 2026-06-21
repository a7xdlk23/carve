<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# signal

## Purpose
First-party lightweight signal/slot (publisher/subscriber) system built on the
`libs/generic/` callback types. This is the project's own event mechanism — **not**
Qt signals/slots — used for observer notifications across the editor.

## Key Files
| File | Description |
|------|-------------|
| `signal.h` / `signal.cpp` | Signal/handler list implementation |
| `isignal.h` | Signal interface |
| `signalfwd.h` | Forward declarations |

## For AI Agents

### Working In This Directory
- Distinct from Qt signals; given `QT_NO_KEYWORDS`, there is no ambiguity, but
  don't confuse the two systems.
- Header-first with a small `.cpp`; included directly.

## Dependencies
### Internal
- `libs/generic/` (callbacks).

<!-- MANUAL: -->
