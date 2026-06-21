<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# radiant

## Purpose
The editor application itself — compiled into the `radiant` executable (see the
`qt_add_executable(radiant ...)` block in the top-level `CMakeLists.txt`). It is
a Qt6 module/plugin **host** built around a reference-counted scene graph. At
startup it loads format modules from `install/modules/` and optional plugins from
`install/plugins/`, presents the 2D/3D viewports and inspectors, and drives the
external map compilers in `tools/` through its build menu.

Entry point: `main.cpp`. Main window and layout: `mainframe.cpp`. The directory
is flat (~175 paired `*.cpp`/`*.h` files); the groupings below are logical, not
on-disk subdirectories.

## Key Files (by subsystem)

### Application lifecycle & shell
| File | Description |
|------|-------------|
| `main.cpp` | `main()`, Qt app + paths/version setup, top-level error handling |
| `mainframe.cpp` | Main window, menus, toolbars, viewport layout, global wiring |
| `qe3.cpp` | Per-game/project configuration and global editor state ("QE3") |
| `environment.cpp` | Home/app paths and environment detection |
| `preferences.cpp`, `preferencedictionary.cpp` | Preferences dialog and key/value store |
| `commands.cpp`, `console.cpp` | Command registry/keybinds and the console window |

### Brush geometry
| File | Description |
|------|-------------|
| `brush.cpp` | Core convex `Brush`/face representation and clipping |
| `brush_primit.cpp` | Brush-primitives (texture projection) math |
| `brushmanip.cpp` | User brush operations (create/transform/resize) |
| `brushnode.cpp`, `brushmodule.cpp` | Scene-graph node type and brush module |
| `brushtokens.cpp`, `brushxml.cpp` | Brush serialization (map tokens / XML) |
| `winding.cpp` | Polygon winding math |
| `csg.cpp` | Constructive solid geometry (subtract/merge/hollow) |
| `clippertool.cpp` | Interactive clip tool |

### Patches (bezier surfaces)
| File | Description |
|------|-------------|
| `patch.cpp` | Bezier patch control grid, subdivision, tessellation |
| `patchmanip.cpp`, `patchmodule.cpp` | Patch operations and patch module |
| `patchdialog.cpp` | Patch inspector/editing dialog |

### Entities & entity classes (FGD/def/eclass)
| File | Description |
|------|-------------|
| `entity.cpp` | Entity node integration in the editor |
| `entityinspector.cpp`, `entitylist.cpp` | Entity key/value inspector and entity list |
| `eclass.cpp`, `eclass_def.cpp` | Entity-class cache and Quake `.def` loader |
| `eclass_doom3.cpp`, `eclass_xml.cpp` | Doom 3 `.def` and XML entity-class loaders |
| `eclass_fgd.cpp` | Built-in FGD parser (used when `RADIANT_SUPPORT_SOURCE=OFF`) |
| `eclass_fgd_sourcepp.cpp` | sourcepp-backed FGD parser (used when `RADIANT_SUPPORT_SOURCE=ON`) |

### Map I/O & assets
| File | Description |
|------|-------------|
| `map.cpp` | Map document: new/open/save, import/export coordination |
| `parse.cpp` | Map token parsing |
| `filetypes.cpp`, `files.cpp` | File-type registry and file helpers |
| `autosave.cpp`, `mru.cpp` | Autosave and most-recently-used list |
| `referencecache.cpp`, `nullmodel.cpp` | Model/resource cache and null-model fallback |

### Scene graph, selection & manipulation
| File | Description |
|------|-------------|
| `scenegraph.cpp` | The scene graph implementation |
| `select.cpp`, `selection.cpp` | Selection traversal and the selection/manipulator system |
| `tools.cpp` | Editor tool modes |
| `points.cpp` | Pointfile (leak) loading/drawing |
| `grid.cpp`, `view.cpp` | Snap grid and view/camera volume |
| `windowobservers.cpp` | Mouse/keyboard observers for viewports |
| `filters.cpp`, `filterbar.cpp` | Visibility filtering and its toolbar |

### Rendering & OpenGL
| File | Description |
|------|-------------|
| `renderer.cpp`, `renderstate.cpp` | Render queue and OpenGL state/shaders |
| `glwidget.cpp`, `qgl.cpp` | Qt GL viewport widget and GL function loading |

### Textures, shaders, surfaces, theming
| File | Description |
|------|-------------|
| `textures.cpp`, `texmanip.cpp` | Texture cache and texture manipulation |
| `texwindow.cpp`, `textureentry.cpp` | Texture browser and texture entry widget |
| `findtexturedialog.cpp`, `surfacedialog.cpp` | Find/replace textures and Surface Inspector |
| `image.cpp` | Image loading dispatch to image modules |
| `colors.cpp`, `theme.cpp` | Color schemes and GUI theme |

### Viewport windows & dialogs
| File | Description |
|------|-------------|
| `camwindow.cpp` | 3D camera viewport |
| `xywindow.cpp` | 2D ortho (XY/XZ/YZ) viewports |
| `modelwindow.cpp` | Model preview window |
| `groupdialog.cpp`, `layerswindow.cpp` | Grouped inspector tabs and layers panel |
| `dialog.cpp`, `gtkdlgs.cpp`, `gtkmisc.cpp` | Dialog framework and UI helpers |
| `help.cpp`, `feedback.cpp`, `treemodel.cpp` | Help/about, feedback, Qt tree model |

### Plugin/module hosting
| File | Description |
|------|-------------|
| `pluginmanager.cpp` | Discovers/loads plugin shared libraries |
| `plugin.cpp`, `pluginapi.cpp` | Plugin module wiring and the API table given to plugins |
| `pluginmenu.cpp`, `plugintoolbar.cpp` | Plugin-contributed menus and toolbar buttons |
| `server.cpp` | In-process module server |

### Build/compile integration
| File | Description |
|------|-------------|
| `build.cpp` | Build menu and external compiler invocation |
| `watchbsp.cpp` | Monitors compiler output, parses progress/feedback over a socket |
| `sockets.cpp` | Socket helpers for the BSP monitor |
| `url.cpp` | Opening URLs / external help |

### Undo & platform/misc
| File | Description |
|------|-------------|
| `undo.cpp` | Undo/redo system |
| `error.cpp`, `stacktrace.cpp` | Error handling and (Windows) crash stack traces |
| `xmlstuff.cpp` | XML helpers used by the editor |
| `radiant.rc` | Windows resource script (icon/version) |

## For AI Agents

### Working In This Directory
- The editor binary is defined by an **explicit source list** in the top-level
  `CMakeLists.txt`, not a glob — add new `*.cpp` files to that list or they
  won't compile. A few files in this folder (e.g. `textureentry.cpp`) are pulled
  in indirectly; check the build list and includes before assuming.
- `eclass_fgd.cpp` vs `eclass_fgd_sourcepp.cpp` are selected by
  `RADIANT_SUPPORT_SOURCE` — edit the variant that matches the build you target,
  or both.
- This is Qt6 with `QT_NO_KEYWORDS` and `-fno-rtti`: use `Q_SLOTS`/`Q_SIGNALS`/
  `Q_EMIT` and avoid `dynamic_cast` (use the project's cast helpers / `TypeSystem`).
- Geometry/scene logic depends heavily on header libraries in `libs/`
  (`scenelib.h`, `brushlib`/`entitylib.h`, `math/`, `mathlib/`) and the interfaces
  in `include/`.

### Testing Requirements
- Build and run `install/radiant`; exercise the affected path manually
  (create/transform brushes, edit entities, open/save a map, run a compile).
- No automated unit tests cover this directory.

### Common Patterns
- Paired `*.cpp`/`*.h`; subsystems exposed to modules through `include/` interfaces.
- Observer/callback wiring (selection, undo, preferences, map validity) via
  `libs/signal/` and `libs/generic/` callbacks.

## Dependencies

### Internal
- `include/` (interfaces), `libs/` (math, scene/entity/shader/texture helpers,
  gtkutil widgets, xml, modulesystem, l_net, quickhull, commandlib).

### External
- Qt6 (Core/Gui/Widgets/Svg/OpenGL/OpenGLWidgets), LibXml2, and (when
  `RADIANT_SUPPORT_SOURCE`) `sourcepp::toolpp`; `ws2_32`/`dbghelp` on Windows.

<!-- MANUAL: -->
