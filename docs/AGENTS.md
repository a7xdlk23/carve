<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# docs

## Purpose
End-user documentation shipped with the editor.

## Key Files
| File | Description |
|------|-------------|
| `mouse shortcuts.txt` | Mouse shortcut reference; copied to `install/docs/` by the top-level `CMakeLists.txt` at build time |

## For AI Agents

### Working In This Directory
- This is user-facing reference text, not source. If you add a doc that should
  ship, also add a `file(COPY ...)` for it in the top-level `CMakeLists.txt`
  (next to the existing `docs/mouse shortcuts.txt` copy).
- Developer/architecture notes belong in the `AGENTS.md` hierarchy; API docs are
  generated via the root `Doxyfile`.

<!-- MANUAL: -->
