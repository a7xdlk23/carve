<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# modulesystem

## Purpose
The plumbing that backs dynamic module/plugin loading. Provides the
`SingletonModule` template and the module registry/map used by `modules/`,
`plugins/`, and the host to register and resolve the interfaces declared in
`include/modulesystem.h`.

## Key Files
| File | Description |
|------|-------------|
| `singletonmodule.h` / `singletonmodule.cpp` | `SingletonModule` — wraps a class as a registered module with dependencies |
| `moduleregistry.h` | Registry of available modules |
| `modulesmap.h` | Name→module lookup maps |

## For AI Agents

### Working In This Directory
- This is how every module/plugin plugs in — see any `modules/*/plugin.cpp` for
  the usage pattern.
- Implements/relies on `include/modulesystem.h` and `include/moduleobserver.h`;
  changes here affect module load order and dependency resolution everywhere.

## Dependencies
### Internal
- `include/modulesystem.h`, `libs/generic/`, `libs/moduleobservers.h`.

<!-- MANUAL: -->
