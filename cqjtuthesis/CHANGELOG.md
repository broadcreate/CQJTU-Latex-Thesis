# Changelog

All notable changes to the cqjtuthesis package will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-29

### Added
- Initial release of cqjtuthesis
- Support for Bachelor's thesis formatting
- Support for Academic Master's thesis formatting
- Support for Professional Master's thesis formatting
- Support for Doctoral dissertation formatting
- Conditional formatting based on degree type
- Automatic generation of cover pages with university logo
- Declaration pages for undergraduate and graduate theses
- Chinese and English abstract environments  
- Table of contents with customizable formatting
- Bibliography support using natbib
- Comprehensive example files for all degree types
- Detailed documentation in Chinese (README.md, USAGE_GUIDE.md)
- English README for international users
- Build scripts (Makefile, makewin.bat)
- 120+ format compliance checks passed

### Documentation
- README - English quick start guide
- README.md - Detailed Chinese documentation
- USAGE_GUIDE.md - Comprehensive user manual in Chinese
- CONTENTS_README.md - Sample content guide in Chinese
- DOCS_INDEX.md - Documentation index
- LICENSE - LPPL 1.3c license
- MANIFEST-CTAN.txt - CTAN upload manifest

### Examples
- main.tex - Bachelor's thesis example
- main_master.tex - Academic Master's thesis example
- main_professional.tex - Professional Master's thesis example
- main_doctor.tex - Doctoral dissertation example
- Complete sample content in contents/ and contents_graduate/
- Sample bibliography in ref/refs.bib
- University logos in multiple colors

### Technical Details
- Based on ctexbook class
- Requires XeLaTeX compilation
- Requires Chinese fonts (SimSun, SimHei, KaiTi)
- Compatible with TeX Live 2025 and later
- Cross-platform support (Windows, Linux, macOS)

### Format Specifications
- Based on "CQJTU Undergraduate Thesis Template" (2024 Edition)
- Based on "CQJTU Graduate Thesis Formatting Requirements" (2013 Revised Edition)
- Precise page margins and layout
- Conditional formatting for different thesis types
- Proper header/footer for different degree levels
- Standard bibliography formatting (GB/T 7714-2015)

---

## Future Plans

### [1.1.0] - Planned
- [ ] Additional template variants
- [ ] More comprehensive examples
- [ ] Enhanced error messages
- [ ] Improved documentation
- [ ] Bug fixes based on user feedback

---

## Version Numbering

This package uses Semantic Versioning:

- **MAJOR** version for incompatible changes
- **MINOR** version for new features in a backward-compatible manner  
- **PATCH** version for backward-compatible bug fixes

---

## Reporting Issues

Please report bugs and feature requests at:
https://github.com/yourusername/CQJTU-Latex-Thesis/issues

---

## Contributors

- CQJTU-Latex-Thesis Development Team

Thanks to all contributors and users!
