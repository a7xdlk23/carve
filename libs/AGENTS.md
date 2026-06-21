<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# libs

## Purpose
Shared support code used across the editor, modules, plugins, and tools. It holds
two kinds of things: **loose header utilities** directly in `libs/` (mostly
header-only helpers that implement the interfaces in `include/`), and a set of
**subdirectory libraries** — some first-party, some vendored third-party. `libs/`
and `include/` are on the include path of nearly every target.

Several subdirectories are compiled into **named static libraries** by the
top-level `CMakeLists.txt`: `gtkutil`, `mathlib`, `xmllib` (from `xml/`),
`l_net`, `quickhull`, `filematch`, `ddslib`, `etclib`, `crnlib`, `webplib`, plus
`commandlib` (from `libs/commandlib.cpp`). The remaining subdirectories are
consumed as headers (a few carry a small `.cpp`) on the global include path.

## Key Files (loose header utilities)
These wrap the `include/` interfaces with concrete, reusable helpers:

| File | Description |
|------|-------------|
| `scenelib.h` | Scene-graph node/instance helpers and traversal utilities |
| `entitylib.h`, `entityxml.h` | Entity helpers and entity XML (de)serialization |
| `eclasslib.h` | Entity-class construction helpers |
| `shaderlib.h` | Shader-name and material helpers |
| `texturelib.h`, `imagelib.h` | Texture/image buffer helpers |
| `maplib.h` | Map import/export helpers |
| `archivelib.h` | Archive/stream helpers for the VFS |
| `selectionlib.h`, `instancelib.h`, `traverselib.h` | Selection, instance, and traversal helpers |
| `transformlib.h`, `dragplanes.h`, `pivot.h` | Transform math and manipulator helpers |
| `undolib.h` | Undo memento helpers |
| `render.h` | Renderer helper types |
| `typesystem.h` | Lightweight type identification (used instead of RTTI) |
| `uniquenames.h`, `layers.h` | Name-uniqueness and layer helpers |
| `commandlib.cpp` / `commandlib.h` | OS command execution (built as the `commandlib` static lib) |
| `str.h`, `stringio.h`, `convert.h`, `character.h` | String/format helpers |
| `bytebool.h`, `bytestreamutils.h`, `rect_t.h`, `timer.h` | Small primitive utilities |
| `fs_filesystem.h`, `fs_path.h`, `inifile.h` | Filesystem/path/INI helpers |
| `mathlib.h` | C math-library header (declares the `mathlib/` C routines — distinct from `math/`) |
| `moduleobservers.h`, `versionlib.h` | Module observer list and version helpers |

## Subdirectories

### First-party
| Directory | Purpose |
|-----------|---------|
| `gtkutil/` | Qt6 GUI widget/utility toolkit (the legacy "gtk" name is historical) — built as `gtkutil` |
| `math/` | Modern C++ vector/matrix/plane/quaternion/AABB/frustum headers (header-only) |
| `mathlib/` | Legacy C math routines (`bbox`, `m4x4`, `line`, `ray`) — built as `mathlib` |
| `generic/` | Callbacks, references, reference counting, enums, bitfields |
| `container/` | Array/hashtable/stack/cache containers |
| `string/` | Pooled/interned string types |
| `stream/` | File/memory/string text-stream classes (header-only) |
| `signal/` | Lightweight signal/slot event system (not Qt signals) |
| `generic/`, `memory/` | Functional helpers and a tracking allocator |
| `modulesystem/` | `SingletonModule`, module registry/map — backbone of module loading |
| `os/` | Path/file/dir OS abstractions (header-only) |
| `script/` | Script tokeniser / token-writer headers (header-only) |
| `debugging/` | Assertion/debug-output macros |
| `xml/` | XML element/parser/writer over LibXml2 — built as `xmllib` |
| `l_net/` | Cross-platform TCP socket layer (idTech heritage) — built as `l_net` |
| `filematch/` | Glob/wildcard filename matching — built as `filematch` |

### Vendored third-party (avoid editing; update from upstream)
| Directory | Purpose |
|-----------|---------|
| `rapidjson/` | RapidJSON header-only JSON library |
| `quickhull/` | 3D convex hull (`QuickHull.cpp`) — built as `quickhull` |
| `crnlib/` | Crunch (`.crn`) decompression — built as `crnlib` (depends on `ddslib`) |
| `ddslib/` | DDS texture format I/O — built as `ddslib` |
| `etclib/` | ETC texture (de)compression — built as `etclib` |
| `webplib/` | WebP codec wrapper (`tiny_webp.h`) — built as `webplib` |

## For AI Agents

### Working In This Directory
- Prefer reusing these helpers over writing new geometry/scene/string utilities.
- A change to a widely-included header (e.g. `scenelib.h`, `math/*`) recompiles
  most of the tree — keep ABI-affecting edits minimal and check call sites.
- Do not edit vendored subdirectories (`rapidjson/`, `quickhull/`, `crnlib/`,
  `ddslib/`, `etclib/`, `webplib/`) for project features; treat them as upstream
  imports.
- Note the three "math" things are different: `math/` (C++ headers), `mathlib/`
  (C routines), and `libs/mathlib.h` (the header declaring `mathlib/`).

### Building / Testing
- Adding sources to a static lib means editing the corresponding `add_library`
  in the top-level `CMakeLists.txt`. No standalone tests; validated by building
  consumers (`radiant`, modules, tools).

## Dependencies

### Internal
- Implements/extends the interfaces in `include/`.

### External
- Qt6 (`gtkutil`), LibXml2 (`xml`), platform sockets (`l_net`, `ws2_32` on Windows).

<!-- MANUAL: -->
