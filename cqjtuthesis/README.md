# CQJTUThesis：重庆交通大学本科毕业论文LaTeX模板

[![CTAN](https://img.shields.io/badge/CTAN-cqjtuthesis-blue.svg)](https://www.ctan.org/pkg/cqjtuthesis)
[![License](https://img.shields.io/badge/license-LPPL%201.3c-blue.svg)](https://www.latex-project.org/lppl/)

## 模板简介

CQJTUThesis 表示 **C**hong**Q**ing **J**iaotong **U**niversity **Thesis**。

本宏包是重庆交通大学本科毕业论文的 LaTeX 模板，按照《重庆交通大学本科毕业论文(设计)模板》(2024更新版)的要求编写，力求：

- ✅ **格式规范**：严格遵循学校官方模板要求
- ✅ **简洁易用**：清晰的文档结构，简单的使用方式
- ✅ **功能完善**：自动生成封面、摘要、目录、参考文献等
- ✅ **示例丰富**：提供完整的示例文档，快速上手

## 模板特色

* ✨ 支持重庆交通大学本科毕业论文（设计）格式
* 📦 内置封面、中英文摘要、目录、参考文献、致谢等论文部件
* 🎨 预置优化的宏包和小功能：图表题注、参考文献引用、公式编号等
* 🔧 跨平台编译支持：Windows、Linux、macOS
* 📖 详细的用户文档和使用示例

## 用户协议

1. 本模板按照 [LaTeX Project Public License](https://www.latex-project.org/lppl/lppl-1-3c/) 1.3c 或更高版本发布；
2. 本模板根据重庆交通大学官方论文格式要求编写，模板作者尽力确保格式正确，但不保证审查老师不提意见。使用前请您同意：任何由于本模板而引起的论文格式审查问题与本模板作者无关；
3. 本模板为非官方模板，如学校有其他要求，请遵循学校的具体规定。

## 快速开始

### 系统要求

- **TeX 发行版**：推荐使用 TeX Live 2020 或更新版本，或 MiKTeX 最新版
- **编译引擎**：XeLaTeX（必需）
- **中文支持**：需要安装中文字体（宋体、黑体、楷体、仿宋）
- **参考文献样式**：需安装 gbt7714（提供 gbt7714-numerical.bst）。

### 下载模板

```bash
# 方式1：从 GitHub 下载最新版本
git clone https://github.com/yourusername/CQJTUThesis.git
cd CQJTUThesis

# 方式2：直接下载 ZIP 压缩包
# 访问 GitHub Releases 页面下载
```

### 编译论文

**Windows 用户**：

双击运行 `makewin.bat`，或在命令行中执行：

```batch
makewin.bat thesis
```

**Linux/Mac 用户**：

```bash
make thesis
```

### 文件结构

```
cqjtuthesis/
├── cqjtuthesis.dtx          # 模板源代码（DocStrip格式）
├── cqjtuthesis.ins          # 安装脚本
├── cqjtuthesis.pdf          # 用户手册
├── main.tex                 # 主文档
├── contents/                # 论文内容
│   ├── cover.tex           #   封面信息
│   ├── abstract.tex        #   中英文摘要
│   ├── chapter01.tex       #   第一章
│   ├── chapter02.tex       #   第二章
│   ├── ...                 #   其他章节
│   ├── conclusion.tex      #   结论
│   ├── thanks.tex          #   致谢
│   └── appendix.tex        #   附录
├── figures/                 # 图片文件夹
├── ref/                     # 参考文献
│   └── refs.bib            #   BibTeX 文献库
├── makewin.bat              # Windows 编译脚本
├── Makefile                 # Linux/Mac 编译脚本
└── README.md                # 本文件
```

## 使用说明

### 1. 填写封面信息

编辑 `contents/cover.tex`，填写论文的基本信息：

```latex
\title{你的论文题目}
\englishtitle{The Subject of Undergraduate Graduation Project (Thesis) of DJUT}
\author{你的姓名}
\studentid{你的学号}
\school{你的学院}
\major{你的专业}
\classnum{你的班级}
\advisor{指导教师姓名}
\completedate{2024年6月}
\coverlogo{blue} % 可选：blue / red / legacy
```

封面校徽可选项说明：

- `blue`：重庆交通大学校徽文字标准组合（2015版，蓝色镂空）
- `red`：重庆交通大学校徽文字标准组合（2015版，红色镂空）
- `legacy`：重庆交通大学校徽文字标准组合（旧版）

如需使用自定义图片，可在导言区设置：

```latex
\coverlogofile{figures/your-logo.png}
```

### 2. 编写摘要

编辑 `contents/abstract.tex`：

- 中文摘要：填写 `\cabstract` 环境
- 中文关键词：使用 `\ckeywords{关键词1, 关键词2, 关键词3}`
- 英文摘要：填写 `\eabstract` 环境
- 英文关键词：使用 `\ekeywords{Keyword1, Keyword2, Keyword3}`

### 3. 编写正文

在 `contents/` 目录下创建各章节的 `.tex` 文件，然后在 `main.tex` 中使用 `\include` 命令引入：

```latex
\mainmatter
\include{contents/chapter01}
\include{contents/chapter02}
\include{contents/conclusion}
```

### 4. 管理参考文献

在 `ref/refs.bib` 中添加参考文献，使用 BibTeX 格式。在正文中使用 `\cite{引用标签}` 引用。

### 5. 编译生成PDF

使用上述编译命令，完整编译需要运行多次以生成正确的交叉引用和参考文献。

## 高级编译

### Windows

查看所有可用命令：

```batch
makewin.bat help
```

常用命令：
- `makewin.bat thesis` - 编译论文
- `makewin.bat clean` - 清理临时文件
- `makewin.bat cleanall` - 清理所有生成文件
- `makewin.bat doc` - 编译用户手册

### Linux/Mac

查看 Makefile 中的所有目标：

```bash
make help
```

## 常见问题

### Q: 编译出错，提示找不到字体？

A: 确保系统已安装中文字体（宋体、黑体、楷体、仿宋）。Windows 系统通常自带，Linux 需要手动安装：

```bash
# Ubuntu/Debian
sudo apt-get install fonts-wqy-microhei fonts-wqy-zenhei

# 或安装 Windows 字体
sudo apt-get install ttf-mscorefonts-installer
```

### Q: 如何自定义格式？

A: 本模板严格按照学校要求设置，不建议修改。如确有需要，请参考 `cqjtuthesis.dtx` 源代码。

### Q: 如何更新模板？

A: 下载最新版本的 `cqjtuthesis.dtx` 和 `cqjtuthesis.ins`，然后运行：

```batch
# Windows
makewin.bat extract

# Linux/Mac
make cls
```

## 反馈与贡献

- **问题反馈**：[GitHub Issues](https://github.com/yourusername/CQJTUThesis/issues)
- **功能建议**：欢迎提交 Pull Request
- **使用交流**：欢迎加入重庆交通大学 LaTeX 用户交流群

## 致谢

本模板参考了以下优秀项目：

- [CQUThesis](https://github.com/nanmu42/CQUThesis) - 重庆大学毕业论文模板
- [ThuThesis](https://github.com/tuna/thuthesis) - 清华大学学位论文模板
- [CTeX](https://github.com/CTeX-org/ctex-kit) - 中文 LaTeX 支持

感谢 LaTeX 社区的无私贡献！

## 许可证

Copyright (C) 2024 CQJTUThesis Development Team

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3c
of this license or (at your option) any later version.

---

**重庆交通大学 LaTeX 用户组**

*让论文排版更简单、更专业*
