<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# os

## Purpose
Header-only operating-system abstractions for path, file, and directory
operations — the cross-platform layer (Windows/Linux/macOS/Haiku) for filesystem
access.

## Key Files
| File | Description |
|------|-------------|
| `path.h` | Path manipulation (join, extension, normalization) |
| `file.h` | File existence/size/time and basic file ops |
| `dir.h` | Directory enumeration |

## For AI Agents

### Working In This Directory
- Header-only; included directly. Keep it portable — no platform-specific code
  should leak into callers.
- Higher-level path helpers also exist as `libs/fs_path.h` / `libs/fs_filesystem.h`.

## Dependencies
### Internal
- Used broadly for asset/map file access; pairs with `libs/stream/`.

<!-- MANUAL: -->
