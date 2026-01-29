# 示例内容说明

本模板为研究生和本科生提供了不同的示例内容，以便更好地理解和使用模板。

## 目录结构

```
cqjtuthesis/
├── contents/              # 本科生示例内容
│   ├── abstract.tex      # 摘要
│   ├── chapter01.tex     # 第一章
│   ├── chapter02.tex     # 第二章
│   ├── conclusion.tex    # 结论
│   ├── thanks.tex        # 致谢
│   └── appendix.tex      # 附录
│
└── contents_graduate/     # 研究生示例内容（新增）
    ├── abstract.tex      # 摘要（含格式说明）
    ├── chapter01.tex     # 第一章（含格式说明）
    ├── chapter02.tex     # 第二章（含公式示例）
    ├── conclusion.tex    # 总结与展望
    ├── thanks.tex        # 致谢
    └── appendix.tex      # 附录
```

## 研究生示例内容特点

### 1. 包含详细的格式说明

每个文件开头都包含了该部分的格式要求，例如：

```tex
% 格式说明：
% - 标题"摘要"：三号黑体，居中，字间距为两个空格
% - 正文：小四号宋体，首行缩进2字符，行距20磅（固定值）
% - 关键词：小四号黑体"关键词："+ 小四号宋体正文，用分号分隔
```

### 2. 示例内容更加完整和专业

- **摘要**：完整的研究摘要，包含研究背景、方法、结果和结论
- **第一章（绪论）**：包含研究背景、国内外研究现状、研究内容等完整结构
- **第二章（理论基础）**：展示了大量公式、列表、表格的使用方法
- **总结与展望**：规范的总结和展望写法

### 3. 展示了各种LaTeX元素的使用

- 多级标题的使用
- 公式编号和引用
- 有序列表和无序列表
- 表格制作
- 文献引用
- 粗体和斜体文字

## 使用方法

### 本科生论文

使用原有的 `contents/` 目录：

```latex
% main.tex中不需要修改
\input{contents/abstract}
\include{contents/chapter01}
...
```

### 研究生论文

使用新的 `contents_graduate/` 目录（已在main_master.tex和main_professional.tex中配置）：

```latex
% main_master.tex 或 main_professional.tex
\input{contents_graduate/abstract}
\include{contents_graduate/chapter01}
...
```

## 如何自定义内容

1. **直接修改示例文件**  
   可以直接在 `contents_graduate/` 目录中的文件上修改，替换成自己的论文内容

2. **参考格式说明**  
   每个文件开头的格式说明注释可以作为参考，了解该部分应该使用什么字体、字号、行距等

3. **复用LaTeX代码**  
   示例中的公式、表格、列表等代码可以直接复用

## 格式要点提醒

### 研究生论文与本科论文主要区别

| 项目 | 本科论文 | 研究生论文 |
|------|---------|-----------|
| 摘要标题 | 小三号黑体 | 三号黑体 |
| 摘要标题字间距 | 1个空格 | 2个空格 |
| 目录标题字间距 | 1个空格 | 2个空格 |
| 目录一级条目 | 小四号宋体 | 四号宋体加粗 |
| 二级标题（节） | 四号黑体 | 小三号黑体 |
| 行距 | 1.5倍行距 | 20磅固定值 |
| 段落缩进 | 2字符 | 2字符 |

### 注意事项

1. **编译顺序**  
   首次编译需要多次运行xelatex生成完整的目录和引用：
   ```bash
   xelatex main_master.tex
   bibtex main_master
   xelatex main_master.tex
   xelatex main_master.tex
   ```

2. **参考文献**  
   需要在 `ref/refs.bib` 中添加实际的参考文献条目

3. **图片**  
   示例中注释掉的图片插入代码需要实际的图片文件支持

## 技术支持

如有问题，请参考：
- `USAGE_GUIDE.md`：详细的使用指南
- `FORMAT_REQUIREMENTS_GRADUATE.md`：研究生论文格式要求
- `FORMAT_REQUIREMENTS.md`：本科论文格式要求
