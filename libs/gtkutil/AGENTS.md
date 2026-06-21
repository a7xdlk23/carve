<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# gtkutil

## Purpose
The project's GUI toolkit layer — reusable **Qt6** widget helpers, dialogs, the
OpenGL viewport widget, GL font rendering, and accelerator/clipboard plumbing.
Built into the `gtkutil` static library by the top-level `CMakeLists.txt`. The
"gtk" name is historical (this code was GTK2 before the Qt6 rewrite); it is now
Qt6.

## Key Files
| File | Description |
|------|-------------|
| `glwidget.cpp/.h` | The Qt OpenGL viewport widget used by camera/ortho/model windows |
| `glfont.cpp/.h` | OpenGL text rendering for viewports |
| `accelerator.cpp/.h`, `accelerator_translate.h` | Keyboard accelerator system and key translation |
| `dialog.cpp/.h`, `nonmodal.cpp/.h`, `messagebox.cpp/.h` | Dialog framework and message boxes |
| `filechooser.cpp/.h` | File open/save dialogs |
| `menu.cpp/.h`, `toolbar.cpp/.h`, `widget.cpp/.h` | Menu/toolbar/widget construction helpers |
| `entry.cpp/.h`, `combobox.h`, `lineedit.h`, `spinbox.h` | Input-widget wrappers |
| `clipboard.cpp/.h`, `guisettings.cpp/.h`, `idledraw.cpp/.h` | Clipboard, persisted window state, idle redraw |
| `image.cpp/.h`, `cursor.h`, `fbo.h`, `mousepresses.h`, `xorrectangle.cpp/.h` | Image loading for widgets, cursor, FBO, mouse helpers, XOR rubber-band |

## For AI Agents

### Working In This Directory
- Built as the `gtkutil` static lib — **add new `.cpp` files to the `add_library(gtkutil ...)`**
  list in the top-level `CMakeLists.txt` (header-only additions don't need it).
- Qt6 with `QT_NO_KEYWORDS`: use `Q_SLOTS`/`Q_SIGNALS`/`Q_EMIT`.
- This is the right home for new reusable widgets/dialogs shared by the editor and
  plugins.

## Dependencies
### Internal
- `libs/generic/` (callbacks), `libs/math/`, `include/igl.h`/`igtkgl.h`.
### External
- Qt6 (Core/Gui/Widgets/Svg/OpenGL/OpenGLWidgets).

<!-- MANUAL: -->
