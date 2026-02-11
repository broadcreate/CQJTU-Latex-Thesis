# cqjtuthesis - Chongqing Jiaotong University Thesis Template

**cqjtuthesis** is a LaTeX thesis template for Chongqing Jiaotong University (CQJTU).
It supports bachelor's, academic master's, professional master's, and doctoral theses,
following the official format requirements.

**Version:** v1.0.2 (2026-02-11)

## Features

- Supports multiple degree types: bachelor, master (academic/professional), doctor
- Automatic cover page generation with proper formatting
- Cross-platform Chinese font support via ctex package
- Compliant with CQJTU thesis format guidelines

## Installation

### From CTAN (Recommended)
```bash
tlmgr install cqjtuthesis
```

### Manual Installation
Copy `tex/cqjtuthesis.cls` to your local texmf tree or project directory.

## Quick Start

1. Choose the appropriate example file from `examples/`:
   - `cqjtuthesis-bachelor.tex` - Bachelor's thesis
   - `cqjtuthesis-master.tex` - Academic master's thesis
   - `cqjtuthesis-professional.tex` - Professional master's thesis
   - `cqjtuthesis-doctor.tex` - Doctoral thesis

2. Compile with XeLaTeX:
```bash
cd examples
xelatex cqjtuthesis-master.tex
bibtex cqjtuthesis-master
xelatex cqjtuthesis-master.tex
xelatex cqjtuthesis-master.tex
```

## Requirements

- TeX Live 2020 or later
- XeLaTeX engine
- ctex package (included in TeX Live)
- Chinese fonts: automatically configured by ctex

## Directory Structure

```
cqjtuthesis/
├── README.md                    # 说明文件（英文+中文）
├── LICENSE                      # 许可证
├── CHANGELOG.md                 # 版本记录
│
├── tex/                         # TeX运行时文件
│   └── cqjtuthesis.cls         # 模板类文件（核心）
│
├── doc/                         # 文档
│   └── cqjtuthesis-doc-zh.md    # 中文使用指南
└── examples/              # Example files
    ├── cqjtuthesis-bachelor.tex   # Bachelor thesis example
    ├── cqjtuthesis-bachelor.pdf   # Compiled example
    ├── cqjtuthesis-master.tex     # Academic master thesis
    ├── cqjtuthesis-master.pdf     # Compiled example
    ├── cqjtuthesis-professional.tex  # Professional master thesis
    ├── cqjtuthesis-professional.pdf  # Compiled example
    ├── cqjtuthesis-doctor.tex     # Doctoral thesis
    ├── cqjtuthesis-doctor.pdf     # Compiled example
    ├── contents/              # Bachelor content examples
    ├── contents-graduate/     # Graduate content examples
    ├── figures/               # Example figures + COPYRIGHT.md
    └── bibliography/          # Bibliography files
```

## License

This work may be distributed and/or modified under the conditions of the
LaTeX Project Public License (LPPL), version 1.3c or later.

## University Logo Copyright Notice

The Chongqing Jiaotong University (CQJTU) logo files included in this package
(`examples/figures/cqjtu-logo-*.png`) are the intellectual property of
Chongqing Jiaotong University. These logos are provided solely for **academic
and educational purposes** (i.e., for students to create thesis documents).

**Commercial use is strictly prohibited** without explicit authorization from
CQJTU's Party Committee Publicity Department (党委宣传部).

- Official logo download page: http://xcb.cqjtu.edu.cn/info/1011/2506.htm
- Authorization contact: 023-62652725

By using these logo files, you agree to comply with CQJTU's intellectual
property policies.

---

**校徽版权声明**

本模板中包含的重庆交通大学校徽图片（`examples/figures/cqjtu-logo-*.png`）
为重庆交通大学知识产权。这些校徽仅供**学术和教育用途**（即学生撰写学位论文）。

**未经授权禁止商业使用。** 商业使用需联系重庆交通大学党委宣传部获得授权。

- 官方下载页面：http://xcb.cqjtu.edu.cn/info/1011/2506.htm
- 授权联系电话：023-62652725

使用本模板中的校徽文件即表示您同意遵守重庆交通大学的知识产权政策。

---

## Author

CQJTUThesis Development Team

## Links

- CTAN: https://ctan.org/pkg/cqjtuthesis
- GitHub: https://github.com/broadcreate/CQJTU-Latex-Thesis

---

# cqjtuthesis - 重庆交通大学学位论文 LaTeX 模板

## 简介

**cqjtuthesis** 是重庆交通大学学位论文的 LaTeX 模板，支持：
- 本科毕业论文（设计）
- 学术型硕士学位论文
- 专业型硕士学位论文
- 博士学位论文

## 快速开始

1. 选择对应的示例文件：
   - 本科：`examples/cqjtuthesis-bachelor.tex`
   - 学硕：`examples/cqjtuthesis-master.tex`
   - 专硕：`examples/cqjtuthesis-professional.tex`
   - 博士：`examples/cqjtuthesis-doctor.tex`

2. 修改封面信息和论文内容

3. 使用 XeLaTeX 编译：
```bash
cd examples
xelatex cqjtuthesis-master.tex
bibtex cqjtuthesis-master
xelatex cqjtuthesis-master.tex
xelatex cqjtuthesis-master.tex
```

## 系统要求

- TeX Live 2020 或更高版本
- XeLaTeX 编译引擎
- ctex 宏包（TeX Live 已包含）

## 详细文档

请参阅 `doc/cqjtuthesis-doc-zh.md`

## 许可证

LaTeX Project Public License (LPPL) 1.3c
