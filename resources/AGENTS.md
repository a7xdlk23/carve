<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# resources

## Purpose
Runtime assets for the editor. The top-level `CMakeLists.txt` does two things
with everything under `resources/`: it bundles it into the executable via the Qt
resource system (`qt_add_resources` with `PREFIX "/"`, base `resources/`) **and**
copies it into `install/` so it is also available as loose files next to the
binary.

## Key Files
| File | Description |
|------|-------------|
| `global.xlink` | Global external-link/help mapping loaded by the editor |

## Subdirectories
| Directory | Purpose |
|-----------|---------|
| `bitmaps/` | Toolbar/UI icons (mostly `.svg`), app icons (`logo.ico`, `radiant.ico`, `.png`), placeholder textures (`notex.png`, `shadernotex.png`, `nomodel.png`), `index.theme`, and the bundled `MyriadPro-Regular.ttf` font |
| `gl/` | GLSL shaders used by the renderer: `lighting_DBS_omni_{vp,fp}.glsl`, `skybox_{vp,fp}.glsl`, `zfill_{vp,fp}.glsl` |
| `themes/` | Qt stylesheet themes (`dark.qss`, `darker.qss`) and `_colors/*.json` editor color schemes |
| `plugins/bitmaps/` | Plugin icons (UFO:AI level/filter icons used by the `ufoaiplug` plugin) |
| `qt/etc/` | `qt.conf` runtime configuration |

## For AI Agents

### Working In This Directory
- `RADIANT_RESOURCES` is collected with `file(GLOB resources/*)`, so the bundled
  set is the top-level entries; new top-level resource files/dirs are picked up on
  re-configure, but verify they are referenced by the editor (e.g. by `:/...`
  resource path) where needed.
- Prefer SVG for new icons to match the existing toolbar set; renderer shaders go
  in `gl/` and are loaded by name.
- This — not `setup/` — is the **live** asset directory for the Qt6 build.

### Testing Requirements
- Re-configure/build and launch `install/radiant`; confirm the icon/shader/theme
  renders (resources resolve from both the `:/` Qt path and `install/`).

## Dependencies

### External
- Qt6 resource system; OpenGL (GLSL in `gl/`).

<!-- MANUAL: -->
