<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# image

## Purpose
The general-purpose texture loader module. Decodes the common image formats into
the editor's `Image` buffers. Built as the `image` shared library; links the
vendored codec libs `ddslib`, `etclib`, `crnlib`, `webplib`.

## Key Files
| File | Description |
|------|-------------|
| `image.cpp` / `image.h` | Loader dispatch / module entry; registers the supported extensions |
| `tga.cpp`, `bmp.cpp`, `pcx.cpp` | Targa, BMP, PCX decoders |
| `dds.cpp` | DDS (via `ddslib`; ETC via `etclib`) |
| `crn.cpp` | Crunch `.crn` (via `crnlib`) |
| `ktx.cpp` | KTX container |
| `webp.cpp` | WebP (via `webplib`) |
| `stb.cpp` + `stb_image.h` | PNG/JPG and other stb-supported formats |
| `jpeg.cpp` / `jpeg.h` | Present in-tree but JPEG is handled via `stb`; **not** in the `image` source list in `cmake/modules.cmake` |

## For AI Agents
- Implements `include/iimage.h` / `include/itextures.h`; returns `Image` buffers
  consumed by the texture system.
- The authoritative compiled file set is `add_module(image SOURCES ...)` in
  `cmake/modules.cmake` — note `jpeg.cpp` is excluded there.
- Game-specific texture formats live in sibling modules: `imagehl` (GoldSrc),
  `imageq2` (Quake 2), `imagevtf` (Source), `imagepvr` (PVR).

## Dependencies
### Internal
- `include/iimage.h`, `libs/imagelib.h`, `libs/ddslib`/`etclib`/`crnlib`/`webplib`.

<!-- MANUAL: -->
