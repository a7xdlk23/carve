<!-- Parent: ../AGENTS.md -->
<!-- Generated: 2026-06-20 | Updated: 2026-06-20 -->

# .github

## Purpose
GitHub repository configuration, continuous integration, and repository media
(screenshots/splash images referenced by the top-level `README.md`).

## Key Files
| File | Description |
|------|-------------|
| `workflows/build.yml` | CI workflow that builds the project |
| `PULL_REQUEST_TEMPLATE.md` | Default PR description template |
| `FUNDING.yml` | GitHub Sponsors / funding links |
| `splash.png` | README banner image |
| `trainstation.png`, `d1_trainstation_02.png`, `ep1_citadel_02b.png`, `testchmb_a_00.png`, `testroom_standards.png` | Screenshots used in `README.md` |

## For AI Agents

### Working In This Directory
- `workflows/build.yml` is the source of truth for the supported build matrix and
  dependency setup — keep it in sync with changes to `CMakeLists.txt`, the
  `FetchContent` deps, and the `RADIANT_*` options.
- Image files here are referenced by `README.md`; renaming one means updating the
  README links.

<!-- MANUAL: -->
