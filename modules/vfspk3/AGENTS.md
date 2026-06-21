<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# vfspk3

## Purpose
The **virtual filesystem** module — the core that mounts game directories and
archives into a single overlayed namespace the editor reads all assets from.
Despite the "pk3" name it drives every archive backend (`archivepak`,
`archivezip`, `archivewad`, `archivevpk`). Built as the `vfspk3` shared library;
uses `filematch` and LibXml2.

## Key Files
| File | Description |
|------|-------------|
| `vfs.cpp` / `vfs.h` | The VFS: directory/archive mounting, file enumeration, search order |
| `archive.cpp` / `archive.h` | Archive mount/registration glue to the archive modules |
| `vfspk3.cpp` / `vfspk3.h` | Module entry / registration |

## For AI Agents
- Implements `include/ifilesystem.h`. This is where mount order/precedence and
  wildcard search (`libs/filematch`) live — changes here affect which asset
  "wins" when names collide.
- For GoldSrc the README notes WADs are auto-mounted; mount policy lives in this
  module's interaction with `archivewad`.
- Source list / links in `cmake/modules.cmake`.

## Dependencies
### Internal
- `include/ifilesystem.h`, `include/iarchive.h`, `libs/filematch/`, `libs/xml/`.
### External
- LibXml2.

<!-- MANUAL: -->
