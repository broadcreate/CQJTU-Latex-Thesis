# CQJTU-Latex-Thesis 使用指南

重庆交通大学学位论文 LaTeX 模板，支持本科、硕士（学术型/专业型）、博士论文。

## 快速开始

### 1. 本科毕业论文

```latex
\documentclass{cqjtuthesis}  % 默认为本科模式
% 或显式指定
\documentclass[degree=bachelor]{cqjtuthesis}
```

### 2. 硕士学位论文

**学术型硕士：**
```latex
\documentclass[degree=master]{cqjtuthesis}  % 默认为学术型
% 或显式指定
\documentclass[degree=master, degree-type=academic]{cqjtuthesis}
```

**专业型硕士：**
```latex
\documentclass[degree=master, degree-type=professional]{cqjtuthesis}
```

### 3. 博士学位论文

```latex
\documentclass[degree=doctor]{cqjtuthesis}
```

## 选项说明

| 选项 | 可选值 | 默认值 | 说明 |
|------|--------|--------|------|
| `degree` | `bachelor` / `master` / `doctor` | `bachelor` | 学位类型 |
| `degree-type` | `academic` / `professional` | `academic` | 学位类别（仅硕士） |

## 主要格式区别

### 页面设置

| 项目 | 本科论文 | 研究生论文 |
|------|---------|-----------|
| 上边距 | 2.5cm | 3.0cm |
| 下边距 | 2.0cm | 2.5cm |
| 左边距 | 3.0cm | 3.0cm |
| 右边距 | 2.0cm | 3.0cm |
| 装订线 | 无 | 0.5cm |

### 页眉页脚

**本科论文：**
- 页眉：每页相同，显示"重庆交通大学 20XX届 XX专业 毕业设计（论文）"
- 页码：底部居中

**研究生论文：**
- 页眉：
  - 偶数页：重庆交通大学硕士/博士学位论文
  - 奇数页：第 X 章 章节标题
- 页码：底部居中

## 封面信息定义

```latex
\title{论文题目}
\englishtitle{English Title}
\author{你的姓名}
\studentid{你的学号}
\school{你的学院}
\major{你的专业}
\cohort{20XX}                  % 本科论文届别
\classnum{你的班级}
\advisor{指导教师姓名 职称}
\completedate{2024年6月}
\coverlogo{blue}               % blue / red / legacy
```

## 编译方式

### 推荐方式（使用 latexmk）

```bash
latexmk -xelatex main.tex
```

### 手动编译

```bash
xelatex main
bibtex main
xelatex main
xelatex main
```

## 文件结构

```
cqjtuthesis/
├── cqjtuthesis.cls          # 模板类文件
├── main.tex                 # 本科论文主文件示例
├── main_master.tex          # 学术硕士论文主文件示例
├── main_professional.tex    # 专业硕士论文主文件示例
├── main_doctor.tex          # 博士论文主文件示例（新增）
├── contents/                # 本科论文内容
│   ├── abstract.tex        # 中英文摘要
│   ├── chapter01.tex       # 第一章
│   ├── chapter02.tex       # 第二章
│   ├── conclusion.tex      # 结论
│   ├── thanks.tex         	# 致谢
│   └── appendix.tex        # 附录
├── contents_graduate/       # 研究生论文内容（新增）
│   ├── abstract.tex        # 中英文摘要（含格式说明）
│   ├── chapter01.tex       # 第一章（含格式说明）
│   ├── chapter02.tex       # 第二章（含公式示例）
│   ├── conclusion.tex      # 总结与展望
│   ├── thanks.tex         	# 致谢
│   └── appendix.tex        # 附录
├── figures/                 # 图片文件夹
│   └── cqjtu-logo-*.png    # 校徽文件
├── ref/
│   └── refs.bib            # 参考文献数据库
├── USAGE_GUIDE.md          # 使用指南（本文件）
├── CONTENTS_README.md      # 示例内容说明
└── FORMAT_REQUIREMENTS*.md # 格式要求文档
```

## 示例文件说明

| 文件 | 学位类型 | 内容来源 | 说明 |
|------|---------|---------|------|
| `main.tex` | 本科 | `contents/` | 本科论文示例 |
| `main_master.tex` | 学术硕士 | `contents_graduate/` | 学术硕士论文示例，含格式说明 |
| `main_professional.tex` | 专业硕士 | `contents_graduate/` | 专业硕士论文示例，含格式说明 |
| `main_doctor.tex` | 博士 | `contents_graduate/` | 博士论文示例，含格式说明 |

**注意：** 研究生论文（硕士和博士）使用相同的示例内容目录 `contents_graduate/`，因为格式要求基本一致。

## 常见问题

### Q1: 如何切换学位类型？

只需修改 `\documentclass` 的选项即可：

```latex
% 从本科切换到硕士
% 修改前：
\documentclass{cqjtuthesis}
% 修改后：
\documentclass[degree=master]{cqjtuthesis}
```

### Q2: 专业硕士和学术硕士有什么区别？

主要体现在封面的学位类别标注：
- 学术硕士：显示"硕士学位论文"
- 专业硕士：显示"专业型硕士学位论文"

其他格式要求相同。

### Q3: 标题太长怎么办？

当前模板统一使用单行显示标题。如果标题过长，请适当精简或调整措辞。

## 更多信息

- 详细格式要求：
  - 本科：`FORMAT_REQUIREMENTS.md`
  - 研究生：`FORMAT_REQUIREMENTS_GRADUATE.md`

- 项目地址：https://github.com/yourusername/cqjtuthesis

## 许可证

LaTeX Project Public License v1.3c

## 致谢

感谢所有为本模板做出贡献的开发者和用户！
