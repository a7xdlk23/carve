<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# xml

## Purpose
First-party XML element/parser/writer layer over **LibXml2**, exposing the
`include/`-style XML node/attribute API used for XML maps, entity-class XML,
preferences, gamepack `.game` files, and the BSP-monitor XML protocol. Built into
the `xmllib` static library.

## Key Files
| File | Description |
|------|-------------|
| `ixml.h` / `ixml.cpp` | XML node/attribute interface |
| `xmlparser.h` / `xmlparser.cpp` | SAX-style parser over LibXml2 |
| `xmlwriter.h` / `xmlwriter.cpp` | XML serializer |
| `xmlelement.h` / `xmlelement.cpp` | Element abstraction |
| `xmltextags.h` / `xmltextags.cpp` | Built-in tag/markup helpers |

## For AI Agents

### Working In This Directory
- Built as `xmllib` (see the `add_library(xmllib ...)` block in the top-level
  `CMakeLists.txt`); links `LibXml2::LibXml2`. Add new `.cpp` files there.
- Reuse this rather than calling LibXml2 directly from feature code.

## Dependencies
### External
- LibXml2.

<!-- MANUAL: -->
