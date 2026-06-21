<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# include

## Purpose
Public interface headers that define the **ABI/contract between the `radiant`
host and its loadable modules and plugins**. These are pure-virtual interface
classes and small POD/typedef headers (no implementation). A module in
`modules/` or a plugin in `plugins/` includes the relevant `i*.h` here, registers
an implementation via the module system, and the host resolves it at load time.
Both `include/` and `libs/` are on the include path of essentially every target.

## Key Files

### Module system & plugins
| File | Description |
|------|-------------|
| `modulesystem.h` | Core module registry/server, version negotiation, `Module`/`ModuleServer` |
| `moduleobserver.h` | Observer for module load/realise/unrealise lifecycle |
| `qerplugin.h` | Radiant plugin toolset interface (`_QERFuncTable_1`) exposed to plugins |
| `iplugin.h` | Plugin module table for menu/command registration |
| `itoolbar.h` | `IToolbarButton` interface for plugin toolbar entries |

### Filesystem & archives
| File | Description |
|------|-------------|
| `ifilesystem.h` | Virtual filesystem: mount/enumerate files, archive registration |
| `iarchive.h` | `Archive`, `ArchiveFile`, `ArchiveTextFile` abstractions |
| `ifiletypes.h` | Registry of loadable file types (extensions, load order) |
| `idatastream.h` | Binary input/output stream interfaces |

### Entities & entity classes
| File | Description |
|------|-------------|
| `ientity.h` | Entity node access, key/value observers, `EntityCreator` |
| `ieclass.h` | Entity-class registry and attribute/spawnflag definitions |
| `namespace.h` | Name/target uniqueness tracking across a map |
| `nameable.h` | `Nameable` interface (get/set object name) |

### Geometry: brushes, patches, models
| File | Description |
|------|-------------|
| `ibrush.h` | Brush types (Quake/Doom3/Valve220) and brush module interface |
| `ipatch.h` | Bezier patch control-grid interface |
| `itexdef.h` | Texture-definition (shift/rotate/scale, BP matrix) types |
| `imodel.h` | `ModelLoader` interface implemented by model modules |
| `modelskin.h` | Model skin/remap interface |
| `imap.h` | `MapImporter`/`MapExporter` interfaces implemented by map modules |
| `mapfile.h` | Map-file change tracking interface |

### Rendering & OpenGL
| File | Description |
|------|-------------|
| `irender.h` | Render state/shader handles, `Renderable`, render passes |
| `renderable.h` | `Renderable` and renderer-visitor interfaces |
| `iglrender.h` | OpenGL shader-program/state interface |
| `igl.h` | OpenGL function-pointer table (`GLInterface`) |
| `igtkgl.h` | GL widget/context interface (legacy GTK name) |
| `ishaders.h` | Shader system: material flags (cull/sky/clip/areaportal), shader queries |
| `itextures.h` | Texture cache/loader interface |
| `iimage.h` | `Image` pixel-buffer interface returned by image modules |

### Scene, selection, manipulation
| File | Description |
|------|-------------|
| `iscenegraph.h` | Scene graph: `scene::Node`/`Instance`, traversal, path |
| `ireference.h` | Reference-counted model/resource cache interface |
| `iselection.h` | `SelectionSystem`, manipulators, selection observers |
| `selectable.h` | `Selectable` interface |
| `editable.h` | `Editable` (local-to-world transform) interface |
| `cullable.h` | `Cullable` (volume intersection) interface |
| `ifilter.h` | Visibility filter interface |
| `icamera.h` | Camera view interface |

### Undo, preferences, parsing, misc
| File | Description |
|------|-------------|
| `iundo.h` | Undo system, `Undoable`/memento interfaces |
| `preferencesystem.h` | Preference registration and persistence |
| `iscriplib.h` | Tokeniser / token-writer interfaces for script parsing |
| `itextstream.h` | Global text input/output stream interfaces |
| `windowobserver.h` | Mouse/keyboard window-event observer interface |
| `version.h`, `stream_version.h`, `aboutmsg.h` | Version constants and about message |

## For AI Agents

### Working In This Directory
- These headers are a **published contract**. Changing a signature here can break
  every module/plugin and the host simultaneously — search `modules/`, `plugins/`,
  and `radiant/` for implementors before editing.
- Headers are deliberately implementation-free; put implementations in `radiant/`,
  `libs/`, or the relevant module — not here.
- Concrete helper implementations of many of these interfaces live as header
  utilities in `libs/` (e.g. `scenelib.h`, `entitylib.h`, `shaderlib.h`,
  `eclasslib.h`, `texturelib.h`, `selectionlib.h`).

### Common Patterns
- Interfaces are abstract classes with pure-virtual methods; modules expose them
  through `SingletonModule`/`modulesystem.h`.
- No RTTI (`-fno-rtti`): type discrimination uses explicit cast helpers and
  `TypeSystem` (`libs/typesystem.h`), not `dynamic_cast`.

## Dependencies

### Internal
- `libs/` — provides the concrete helpers and generic utilities used to implement these interfaces.

### External
- None directly (interfaces only); some reference Qt/GL types via thin wrappers.

<!-- MANUAL: -->
