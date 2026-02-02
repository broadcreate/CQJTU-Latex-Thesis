# CQJTU-Latex-Thesis 使用指南

重庆交通大学学位论文 LaTeX 模板，支持本科、硕士（学术型/专业型）、博士论文。

**版本**: v1.0.1  
**更新日期**: 2026-02-02  
**编译环境**: XeLaTeX + TeX Live 2020+

**格式要求参考**:
- 本科论文：《重庆交通大学本科毕业论文（设计）模板》（2024年版）
- 研究生论文：《重庆交通大学研究生学位论文格式要求》（2013年修订版）

---

## 📖 目录

1. [快速开始](#快速开始)
2. [选项说明](#选项说明)
3. [主要格式区别](#主要格式区别)
4. [封面信息定义](#封面信息定义)
5. [文件结构](#文件结构)
6. [编译方式](#编译方式)
7. [使用步骤](#使用步骤)
8. [常见问题](#常见问题)
9. [格式验证](#格式验证)
10. [更多信息](#更多信息)

---

## 快速开始

### 1. 本科毕业论文

**使用示例文件**: `examples/cqjtuthesis-bachelor.tex`

```latex
\documentclass{../tex/cqjtuthesis}  % 默认为本科模式
% 或显式指定
\documentclass[degree=bachelor]{../tex/cqjtuthesis}
```

**内容目录**: `examples/contents/`  
**编译命令**: `cd examples && xelatex cqjtuthesis-bachelor.tex`

### 2. 学术型硕士学位论文

**使用示例文件**: `examples/cqjtuthesis-master.tex`

```latex
\documentclass[degree=master]{../tex/cqjtuthesis}  % 默认为学术型
% 或显式指定
\documentclass[degree=master, degree-type=academic]{../tex/cqjtuthesis}
```

**内容目录**: `examples/contents-graduate/`  
**编译命令**: `cd examples && xelatex cqjtuthesis-master.tex`

### 3. 专业型硕士学位论文

**使用示例文件**: `examples/cqjtuthesis-professional.tex`

```latex
\documentclass[degree=master, degree-type=professional]{../tex/cqjtuthesis}
```

**内容目录**: `examples/contents-graduate/`  
**编译命令**: `cd examples && xelatex cqjtuthesis-professional.tex`

### 4. 博士学位论文

**使用示例文件**: `examples/cqjtuthesis-doctor.tex`

```latex
\documentclass[degree=doctor]{../tex/cqjtuthesis}
```

**内容目录**: `examples/contents-graduate/`  
**编译命令**: `cd examples && xelatex cqjtuthesis-doctor.tex`

---

## 选项说明

### 类选项

| 选项 | 可选值 | 默认值 | 说明 |
|------|--------|--------|------|
| `degree` | `bachelor` / `master` / `doctor` | `bachelor` | 学位类型 |
| `degree-type` | `academic` / `professional` | `academic` | 学位类别（仅硕士有效） |

### 校徽选项

| 选项 | 说明 |
|------|------|
| `\coverlogo{blue}` | 蓝色校徽（推荐） |
| `\coverlogo{red}` | 红色校徽 |
| `\coverlogo{legacy}` | 旧版校徽 |

---

## 主要格式区别

### 页面设置

| 项目 | 本科论文 | 研究生论文 |
|------|---------|-----------| 
| 纸张 | A4 | A4 |
| 上边距 | 2.5cm | 3.0cm |
| 下边距 | 2.0cm | 2.5cm |
| 左边距 | 3.0cm | 3.0cm |
| 右边距 | 2.0cm | 3.0cm |
| 装订线 | 无 | 0.5cm |
| 页眉距顶部 | - | 2.0cm |
| 页脚距底部 | - | 约1.5cm |

### 页眉页脚

**本科论文：**
- 页眉：每页相同，显示"重庆交通大学 20XX届 XX专业 毕业设计（论文）"
- 页眉字体：五号宋体
- 页码：底部居中，五号

**研究生论文：**
- 页眉：
  - 偶数页：重庆交通大学硕士/博士学位论文
  - 奇数页：章节标题（如"第1章 绪论"）
- 页眉字体：五号宋体
- 页眉线：0.4pt黑色实线
- 页码：底部居中，五号

### 封面格式

| 项目 | 本科 | 学术硕士 | 专业硕士 | 博士 |
|------|------|---------|---------|------|
| 学位标识 | 毕业设计（论文） | 硕士学位论文 | 专业硕士学位论文 | 博士学位论文 |
| 标识字号 | 一号宋体加粗 | 一号黑体 | 一号黑体 | 一号黑体 |
| 论文题目 | 二号宋体加粗 | 一号宋体加粗 | 一号宋体加粗 | 一号宋体加粗 |
| 底部信息 | 简单表格 | 6行表格 | 5行表格 | 6行表格 |

### 摘要与目录

| 项目 | 本科 | 研究生 |
|------|------|--------|
| 摘要标题 | "摘 要"（小三号黑体） | "摘  要"（三号黑体，2空格） |
| 摘要正文 | 小四号宋体，1.5倍行距 | 小四号宋体，20磅固定行距 |
| 目录标题 | "目 录"（三号黑体） | "目  录"（三号黑体，2空格） |
| 一级条目 | 小四号宋体 | 四号宋体加粗 |

### 正文格式

| 项目 | 本科 | 研究生 |
|------|------|--------|
| 章标题 | 三号黑体居中 | 三号黑体居中 |
| 节标题（二级） | 四号黑体左对齐 | 小三号黑体左对齐 |
| 小节标题（三级） | 小四号黑体左对齐 | 四号黑体左对齐 |
| 正文 | 小四号宋体 | 小四号宋体 |
| 行距 | 1.5倍行距 | 20磅固定值 |
| 首行缩进 | 2字符 | 2字符 |

### 声明页

| 项目 | 本科 | 研究生 |
|------|------|--------|
| 原创性声明 | ✓ | ✓ |
| 版权授权书 | ✓ | ✓ |
| CNKI授权 | ✗ | ✓ |
| 总页数 | 1页（2部分） | 1页（3部分） |

---

## 封面信息定义

### 基本信息（所有学位类型）

```latex
\title{论文题目}
\englishtitle{English Title}
\author{你的姓名}
\studentid{你的学号}
\school{你的学院}
\major{你的专业}
\advisor{指导教师姓名 职称}
\completedate{2024年6月}
\coverlogo{blue}               % blue / red / legacy
```

### 本科生额外字段

```latex
\cohort{20XX}                  % 届别，如2024
\classnum{你的班级}             % 班级号
```

### 研究生额外字段（学术型硕士/博士）

```latex
\clc{U491}                     % 分类号
\securitylevel{保密}            % 密级（可选）
\discipline{交通运输工程}       % 一级学科
\subdiscipline{交通信息工程及控制}  % 二级学科
\degreecategory{硕士学位}       % 申请学位类别
\submitdate{2024年5月15日}     % 论文提交日期
\defenddate{2024年5月20日}     % 论文答辩日期
```

### 专业型硕士额外字段

```latex
\clc{U491}                     % 分类号
\professionalfield{交通运输}    % 专业领域名称
\degreecategory{专业学位}       % 申请专业学位类别
\submitdate{2024年5月15日}     % 论文提交日期
\defenddate{2024年5月20日}     % 论文答辩日期
```

---

## 文件结构

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
│   └── cqjtuthesis-doc-zh.md   # 中文使用指南（本文件）
│
└── examples/                    # 示例文件
    ├── cqjtuthesis-bachelor.tex    # 本科论文示例
    ├── cqjtuthesis-bachelor.pdf    # 编译后PDF
    ├── cqjtuthesis-master.tex      # 学术硕士示例
    ├── cqjtuthesis-master.pdf      # 编译后PDF
    ├── cqjtuthesis-professional.tex # 专业硕士示例
    ├── cqjtuthesis-professional.pdf # 编译后PDF
    ├── cqjtuthesis-doctor.tex      # 博士示例
    ├── cqjtuthesis-doctor.pdf      # 编译后PDF
    │
    ├── contents/                # 本科论文内容
    │   ├── abstract.tex        # 中英文摘要
    │   ├── chapter01.tex       # 第一章
    │   ├── chapter02.tex       # 第二章
    │   ├── conclusion.tex      # 结论
    │   ├── thanks.tex          # 致谢
    │   └── appendix.tex        # 附录
    │
    ├── contents-graduate/       # 研究生论文内容（硕士+博士）
    │   ├── abstract.tex        # 中英文摘要
    │   ├── chapter01.tex       # 第一章
    │   ├── chapter02.tex       # 第二章
    │   ├── conclusion.tex      # 结论
    │   ├── thanks.tex          # 致谢
    │   ├── appendix.tex        # 附录
    │   └── achievements.tex    # 研究成果
    │
    ├── figures/                 # 图片文件夹
    │   ├── cqjtu-logo-blue.png # 蓝色校徽
    │   └── COPYRIGHT.md        # 校徽版权声明
    │
    └── bibliography/            # 参考文献
        └── cqjtuthesis-refs.bib # BibTeX数据库
```

### 示例文件对照表

| 文件 | 学位类型 | 内容来源 | 编译页数 |
|------|---------|---------|---------|
| `cqjtuthesis-bachelor.tex` | 本科 | `contents/` | 16页 |
| `cqjtuthesis-master.tex` | 学术硕士 | `contents-graduate/` | 19页 |
| `cqjtuthesis-professional.tex` | 专业硕士 | `contents-graduate/` | 19页 |
| `cqjtuthesis-doctor.tex` | 博士 | `contents-graduate/` | 19页 |

**说明**:
- 本科论文使用具体示例便于理解
- 研究生论文使用格式说明文本（如"论文题目（一号宋体）"），便于用户了解格式要求
- 所有研究生论文共享同一套详细示例内容

---

## 编译方式

### 推荐方式1：使用 latexmk（最简单）

```bash
latexmk -xelatex main_master.tex
```

### 推荐方式2：手动编译（完整）

```bash
xelatex main_master.tex
bibtex main_master
xelatex main_master.tex
xelatex main_master.tex
```

### 快速编译（无参考文献）

```bash
xelatex main_master.tex
```

### 清理辅助文件

```bash
# Windows (PowerShell)
Remove-Item *.aux,*.log,*.toc,*.bbl,*.blg,*.out

# Linux/Mac
latexmk -c
```

---

## 使用步骤

### 第一步：选择正确的模板文件

根据你的学位类型选择对应的主文件：

- 本科生 → `examples/cqjtuthesis-bachelor.tex`
- 学术硕士 → `examples/cqjtuthesis-master.tex`
- 专业硕士 → `examples/cqjtuthesis-professional.tex`
- 博士生 → `examples/cqjtuthesis-doctor.tex`

### 第二步：修改封面信息

打开选择的主文件，修改封面信息部分：

```latex
% 将格式说明替换为实际内容
\title{你的实际论文题目}          % 不要写"论文题目（一号宋体）"
\author{你的实际姓名}             % 不要写"（小三号黑体）"
\advisor{指导教师姓名 职称}       % 如：张三 教授
% ... 其他字段
```

### 第三步：修改示例内容

- **本科生**: 修改 `examples/contents/` 目录下的文件
- **研究生**: 修改 `examples/contents-graduate/` 目录下的文件

每个文件的开头都有格式说明注释，请仔细阅读。

### 第四步：添加参考文献

在 `examples/bibliography/cqjtuthesis-refs.bib` 文件中添加你的参考文献：

```bibtex
@article{example2024,
  author = {张三 and 李四},
  title = {论文标题},
  journal = {期刊名称},
  year = {2024},
  volume = {10},
  number = {2},
  pages = {123--145}
}
```

在正文中引用：`\cite{example2024}`

### 第五步：编译生成PDF

```bash
xelatex main_master.tex
bibtex main_master
xelatex main_master.tex
xelatex main_master.tex
```

### 第六步：检查格式

- 打开生成的PDF文件
- 对照格式要求逐页检查
- 重点检查：封面、声明页、摘要、目录、正文
- 建议打印一页测量边距

---

## 常见问题

### Q1: 如何切换学位类型？

只需修改 `\documentclass` 的选项即可：

```latex
% 从本科切换到学术硕士
% 修改前：
\documentclass{cqjtuthesis}
% 修改后：
\documentclass[degree=master]{cqjtuthesis}

% 从学术硕士切换到专业硕士
% 修改前：
\documentclass[degree=master]{cqjtuthesis}
% 修改后：
\documentclass[degree=master, degree-type=professional]{cqjtuthesis}
```

### Q2: 学术硕士和专业硕士有什么区别？

主要区别：

1. **封面学位标识**：
   - 学术硕士："硕 士 学 位 论 文"
   - 专业硕士："专 业 硕 士 学 位 论 文"

2. **封面底部表格**：
   - 学术硕士：一级学科名称 + 二级学科名称（6行）
   - 专业硕士：专业领域名称（5行）

3. **其他格式要求完全相同**

### Q3: 论文题目太长怎么办？

当前模板统一使用单行显示标题。建议：

1. 精简论文题目（推荐不超过30字）
2. 使用副标题结构（如需要可联系修改模板）
3. 调整措辞使标题更简洁

### Q4: 如何插入图片？

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{figures/example.png}
  \caption{图片标题}
  \label{fig:example}
\end{figure}
```

引用图片：`如图\ref{fig:example}所示`

### Q5: 如何制作表格？

```latex
\begin{table}[htbp]
  \centering
  \caption{表格标题}
  \label{tab:example}
  \begin{tabular}{ccc}
    \toprule
    列1 & 列2 & 列3 \\
    \midrule
    数据1 & 数据2 & 数据3 \\
    \bottomrule
  \end{tabular}
\end{table}
```

### Q6: 如何添加公式？

行内公式：`$E=mc^2$`

独立公式：
```latex
\begin{equation}
  E = mc^2
  \label{eq:einstein}
\end{equation}
```

引用公式：`如式\eqref{eq:einstein}所示`

### Q7: 编译出错怎么办？

常见问题：

1. **找不到文件**: 检查路径是否正确
2. **字体缺失**: 确保安装了SimSun（宋体）、SimHei（黑体）、KaiTi（楷体）
3. **参考文献错误**: 确保运行了bibtex
4. **图片无法显示**: 检查图片路径和格式（推荐PNG或PDF格式）

### Q8: 如何修改行距？

模板已按照要求自动设置：
- 本科：1.5倍行距
- 研究生：20磅固定行距

**不建议手动修改**，以免不符合格式要求。

### Q9: 示例内容中的格式说明要删除吗？

是的！研究生模板中的格式说明（如"论文题目（一号宋体）"、"（小三号黑体）"）只是为了说明格式要求，**使用时必须替换为实际内容**。

### Q10: 本科和研究生可以共用内容文件吗？

不建议。两者的格式要求不同：
- 本科使用 `contents/`
- 研究生使用 `contents_graduate/`

如需共用，需要手动调整格式。

---

## 格式验证

### 验证清单

使用模板前，请确保：

- [ ] 选择了正确的学位类型（bachelor/master/doctor）
- [ ] 填写了所有必需的封面信息字段
- [ ] 修改了示例内容为实际论文内容
- [ ] 添加了实际的参考文献
- [ ] 完整编译了至少两次（生成目录和引用）
- [ ] 检查了封面格式
- [ ] 检查了声明页内容
- [ ] 检查了摘要和关键词
- [ ] 检查了目录生成正确
- [ ] 检查了页眉页脚
- [ ] 检查了参考文献格式

### 格式核对要点

1. **页面设置**: 
   - 本科：上2.5cm，下2.0cm，左3.0cm，右2.0cm
   - 研究生：上3.0cm，下2.5cm，左3.0cm，右3.0cm，装订线0.5cm

2. **封面**:
   - 所有字段填写完整
   - 学位标识正确（硕士/专业硕士/博士）
   - 底部表格信息完整

3. **声明页**:
   - 本科2部分、研究生3部分
   - 签名行位置正确

4. **摘要**:
   - 标题字间距正确（研究生为2个空格）
   - 行距正确（研究生为20磅）

5. **目录**:
   - 层级清晰
   - 页码准确

---

## 更多信息

### 相关文档
 
- **示例内容说明**: `CONTENTS_README.md`
- **官方格式要求**: 请参考学校官网相关模板

### 技术支持

如遇问题，请检查：

1. LaTeX发行版是否为TeX Live 2025或更新版本
2. 是否使用XeLaTeX编译
3. 是否安装了必需的中文字体
4. 是否完整编译了多次

### 版本信息

- **当前版本**: v1.0.1
- **更新日期**: 2026-02-02
- **支持学位**: 本科、学术硕士、专业硕士、博士
- **编译引擎**: XeLaTeX
- **依赖**: TeX Live 2020+

### 许可证

本模板采用 LaTeX Project Public License v1.3c

### 贡献与反馈

欢迎提出问题和建议，帮助改进模板！

---

## 致谢

感谢所有为本模板做出贡献的开发者和用户！

特别感谢重庆交通大学提供的官方格式要求文档。
