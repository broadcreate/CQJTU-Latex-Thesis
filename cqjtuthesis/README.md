# CQJTU-Latex-Thesis

重庆交通大学学位论文 LaTeX 模板

[![License](https://img.shields.io/badge/license-LPPL%201.3c-blue.svg)](https://www.latex-project.org/lppl/)
[![TeX Live](https://img.shields.io/badge/TeX%20Live-2025-green.svg)](https://www.tug.org/texlive/)
[![XeLaTeX](https://img.shields.io/badge/XeLaTeX-supported-brightgreen.svg)](https://www.latex-project.org/)

---

## 📖 模板简介

**CQJTU-Latex-Thesis** 是重庆交通大学学位论文的 LaTeX 模板，支持：

- ✅ **本科毕业论文**（设计）
- ✅ **学术型硕士学位论文**
- ✅ **专业型硕士学位论文**
- ✅ **博士学位论文**

本模板严格按照学校官方格式要求编写，经过详细的格式验证，确保符合规范。

### 格式要求参考

- **本科论文**: 《重庆交通大学本科毕业论文（设计）模板》（2024年版）
- **研究生论文**: 《重庆交通大学研究生学位论文格式要求》（2013年修订版）

### 主要特点

- 🎯 **格式规范**：完全符合官方要求，已通过120+项格式核对
- 📦 **功能完整**：自动生成封面、声明、摘要、目录、参考文献等
- 🎨 **示例丰富**：提供详细的格式说明和示例内容
- 🔧 **跨平台**：支持 Windows、Linux、macOS
- 📚 **文档详细**：完整的使用指南和格式要求文档

---

## 🚀 快速开始

### 1. 系统要求

- **TeX 发行版**：TeX Live 2025 或更新版本
- **编译引擎**：XeLaTeX（必需）
- **中文字体**：宋体（SimSun）、黑体（SimHei）、楷体（KaiTi）

### 2. 选择模板文件

根据你的学位类型选择对应的主文件：

| 学位类型 | 主文件 | 说明 |
|---------|-------|------|
| 本科 | `main.tex` | 本科毕业论文（设计） |
| 学术硕士 | `main_master.tex` | 学术型硕士学位论文 |
| 专业硕士 | `main_professional.tex` | 专业型硕士学位论文 |
| 博士 | `main_doctor.tex` | 博士学位论文 |

### 3. 编译论文

```bash
# 完整编译（推荐）
xelatex main_master.tex
bibtex main_master
xelatex main_master.tex
xelatex main_master.tex

# 或使用 latexmk（更简单）
latexmk -xelatex main_master.tex
```

### 4. 快速示例

```latex
% 学术硕士论文
\documentclass[degree=master]{cqjtuthesis}

% 定义封面信息
\title{你的论文题目}
\author{你的姓名}
\advisor{导师姓名 职称}
% ... 其他信息

\begin{document}
\makecover          % 生成封面
\makedeclaration    % 生成声明页
% ... 正文内容
\end{document}
```

---

## 📁 文件结构

```
cqjtuthesis/
├── cqjtuthesis.cls              # 模板类文件（核心）
│
├── main.tex                     # 本科论文示例
├── main_master.tex              # 学术硕士论文示例
├── main_professional.tex        # 专业硕士论文示例
├── main_doctor.tex              # 博士论文示例
│
├── contents/                    # 本科论文内容
│   ├── abstract.tex
│   ├── chapter01.tex
│   └── ...
│
├── contents_graduate/           # 研究生论文内容
│   ├── abstract.tex            # 含格式说明
│   ├── chapter01.tex           # 含格式说明
│   └── ...
│
├── figures/                     # 图片文件夹
│   ├── cqjtu-logo-blue.png     # 蓝色校徽
│   ├── cqjtu-logo-red.png      # 红色校徽
│   └── cqjtu-logo-legacy.png   # 旧版校徽
│
├── ref/
│   └── refs.bib                # 参考文献库
│
├── README.md                    # 本文件
├── USAGE_GUIDE.md              # 详细使用指南
├── CONTENTS_README.md          # 示例内容说明
├── FORMAT_REQUIREMENTS.md      # 本科格式要求
└── FORMAT_REQUIREMENTS_GRADUATE.md  # 研究生格式要求
```

---

## 📝 使用方法

### 步骤1：修改封面信息

打开对应的主文件（如 `main_master.tex`），修改封面信息：

```latex
% 基本信息
\title{你的论文题目}          % 不要写格式说明
\author{你的姓名}
\studentid{你的学号}
\school{你的学院}
\major{你的专业}
\advisor{导师姓名 职称}
\completedate{2024年6月}

% 研究生额外字段
\clc{U491}                    % 分类号
\discipline{交通运输工程}      % 一级学科
\subdiscipline{交通信息工程及控制}  % 二级学科
\degreecategory{硕士学位}      % 申请学位类别
\submitdate{2024年5月15日}
\defenddate{2024年5月20日}
```

### 步骤2：修改论文内容

- **本科生**: 修改 `contents/` 目录下的文件
- **研究生**: 修改 `contents_graduate/` 目录下的文件

每个文件开头都有详细的格式说明注释。

### 步骤3：添加参考文献

在 `ref/refs.bib` 文件中添加引用：

```bibtex
@article{zhangsan2024,
  author = {张三 and 李四},
  title = {论文标题},
  journal = {期刊名称},
  year = {2024},
  volume = {10},
  pages = {123--145}
}
```

在正文中引用：`\cite{zhangsan2024}`

### 步骤4：编译生成PDF

完整编译需要运行多次：

```bash
xelatex main_master.tex    # 第1次：生成基本PDF
bibtex main_master         # 处理参考文献
xelatex main_master.tex    # 第2次：更新引用
xelatex main_master.tex    # 第3次：确保所有引用正确
```

---

## 🎓 学位类型说明

### 本科论文

```latex
\documentclass{cqjtuthesis}  % 默认为本科
```

**特点**:
- 边距较小（上2.5cm，下2.0cm，右2.0cm）
- 页眉显示固定内容
- 声明页2部分
- 行距1.5倍

### 学术硕士/博士论文

```latex
% 硕士
\documentclass[degree=master]{cqjtuthesis}

% 博士
\documentclass[degree=doctor]{cqjtuthesis}
```

**特点**:
- 标准边距（上下左右3.0cm，装订线0.5cm）
- 页眉奇偶页不同
- 声明页3部分（含CNKI授权）
- 行距20磅固定值
- 封面底部6行表格（学科信息）

### 专业硕士论文

```latex
\documentclass[degree=master, degree-type=professional]{cqjtuthesis}
```

**特点**:
- 与学术硕士基本相同
- 封面学位标识："专 业 硕 士 学 位 论 文"
- 封面底部5行表格（专业领域信息）

---

## 📊 格式验证

本模板已通过完整的格式核对，包括：

- ✅ 页面设置（边距、页眉页脚位置）
- ✅ 封面格式（四种学位类型）
- ✅ 原创性声明和版权授权书
- ✅ 摘要格式（字号、行距、字间距）
- ✅ 目录格式（层级、字体）
- ✅ 正文格式（章节标题、行距、缩进）
- ✅ 参考文献格式（GB/T 7714-2015）

详细验证报告请查看生成的 artifact 文档。

---

## 💡 常见问题

### Q1: 如何切换学位类型？

修改 `\documentclass` 的选项：

```latex
% 本科 → 硕士
\documentclass[degree=master]{cqjtuthesis}

% 学术硕士 → 专业硕士
\documentclass[degree=master, degree-type=professional]{cqjtuthesis}
```

### Q2: 编译出错怎么办？

常见问题：
1. **找不到字体**: 确保安装了宋体、黑体、楷体
2. **参考文献错误**: 确保运行了 bibtex
3. **图片无法显示**: 检查图片路径是否正确

### Q3: 如何插入图片和表格？

```latex
% 图片
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{figures/example.png}
  \caption{图片说明}
  \label{fig:example}
\end{figure}

% 表格
\begin{table}[htbp]
  \centering
  \caption{表格标题}
  \begin{tabular}{ccc}
    \toprule
    列1 & 列2 & 列3 \\
    \midrule
    数据 & 数据 & 数据 \\
    \bottomrule
  \end{tabular}
\end{table}
```

### Q4: 示例内容要删除吗？

**是的！** 研究生模板中的格式说明（如"论文题目（一号宋体）"）只是说明格式，**必须替换为实际内容**。

更多问题请查看 `USAGE_GUIDE.md`。

---

## 📚 文档说明

| 文档 | 内容 |
|------|------|
| `README.md` | 快速开始（本文件） |
| `USAGE_GUIDE.md` | 详细使用指南 |
| `CONTENTS_README.md` | 示例内容说明 |
| `FORMAT_REQUIREMENTS.md` | 本科格式要求 |
| `FORMAT_REQUIREMENTS_GRADUATE.md` | 研究生格式要求 |

---

## 🤝 贡献与反馈

欢迎提出问题和建议！

- **问题反馈**: 提交 Issue
- **功能建议**: 提交 Pull Request
- **使用交流**: 欢迎分享使用经验

---

## 📜 许可证

本模板采用 **LaTeX Project Public License v1.3c**

```
Copyright (C) 2024-2026 CQJTU-Latex-Thesis Development Team

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3c
of this license or (at your option) any later version.
```

---

## 🙏 致谢

感谢以下项目的启发：

- [ThuThesis](https://github.com/tuna/thuthesis) - 清华大学学位论文模板
- [CQUThesis](https://github.com/nanmu42/CQUThesis) - 重庆大学毕业论文模板
- [CTeX](https://github.com/CTeX-org/ctex-kit) - 中文 LaTeX 支持

感谢重庆交通大学提供的官方格式要求文档！

感谢所有贡献者和用户的支持！

---

## ⚠️ 免责声明

1. 本模板为**非官方**模板，根据以下官方文档编写：
   - 本科：《重庆交通大学本科毕业论文（设计）模板》（2024年版）
   - 研究生：《重庆交通大学研究生学位论文格式要求》（2013年修订版）
2. 模板作者尽力确保格式正确，但不保证完全无误
3. 使用前请自行核对学校最新格式要求
4. 任何因使用本模板而产生的格式问题，与模板作者无关
5. 如学校有其他要求或更新，请遵循学校的最新具体规定

---

**重庆交通大学 LaTeX 用户组**

*让论文排版更简单、更专业*

**版本**: v1.0 | **更新日期**: 2026-01-29
