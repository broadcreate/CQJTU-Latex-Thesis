# CQJTUThesis 快速开始指南

欢迎使用重庆交通大学本科毕业论文 LaTeX 模板！

## 📥 第一步：环境准备

### Windows 用户

1. 安装 **TeX Live** (推荐) 或 **MiKTeX**
   - TeX Live 下载：https://www.tug.org/texlive/
   - 安装时选择完整安装（需要约 7GB 空间）

2. 验证安装
   ```cmd
   xelatex --version
   ```

### macOS 用户

1. 安装 MacTeX
   ```bash
   brew install --cask mactex
   ```

### Linux 用户

1. 安装 TeX Live
   ```bash
   sudo apt-get install texlive-full
   ```

## 📝 第二步：编辑论文信息

### 1. 修改封面信息

打开 `main.tex`，修改以下内容：

```latex
\title{你的论文题目}
\englishtitle{Your English Title}
\author{你的姓名}
\studentid{你的学号}
\school{你的学院}
\major{你的专业}
\classnum{你的班级}
\advisor{指导教师姓名}
\completedate{2024年6月}
```

### 2. 编写摘要

编辑 `contents/abstract.tex`：

```latex
\begin{cabstract}
这里写中文摘要内容...

\ckeywords{关键词1; 关键词2; 关键词3}
\end{cabstract}

\begin{eabstract}
Write your English abstract here...

\ekeywords{Keyword1; Keyword2; Keyword3}
\end{eabstract}
```

### 3. 编写正文

编辑各章节文件：
- `contents/chapter01.tex` - 第一章
- `contents/chapter02.tex` - 第二章
- `contents/conclusion.tex` - 结论

### 4. 添加参考文献

编辑 `ref/refs.bib`，添加文献：

```bibtex
@article{key,
  author  = {作者},
  title   = {标题},
  journal = {期刊},
  year    = {2023}
}
```

在正文中引用：`\cite{key}`

## ⚙️ 第三步：编译论文

### Windows 用户

双击运行 `makewin.bat`，或在命令行中：

```cmd
makewin.bat thesis
```

### Linux/Mac 用户

```bash
make thesis
```

### 手动编译（如果脚本不工作）

```bash
xelatex main
bibtex main
xelatex main
xelatex main
```

## 📖 第四步：查看结果

编译成功后，会生成 `main.pdf` 文件，这就是你的论文！

## 🛠️ 常用命令

### Windows

```cmd
makewin.bat thesis    # 编译论文
makewin.bat clean     # 清理临时文件
makewin.bat cleanall  # 清理所有生成文件
makewin.bat help      # 显示帮助
```

### Linux/Mac

```bash
make thesis    # 编译论文
make clean     # 清理临时文件
make cleanall  # 清理所有生成文件
make help      # 显示帮助
```

## ❓ 常见问题

### Q: 编译报错"找不到字体"？

**A:** Windows 系统通常自带所需中文字体。Linux 用户需要安装：

```bash
sudo apt-get install fonts-wqy-microhei fonts-wqy-zenhei
```

### Q: 如何插入图片？

**A:** 将图片放在 `figures/` 目录，然后在正文中：

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.6\textwidth]{图片文件名}
  \caption{图片标题}
  \label{fig:标签}
\end{figure}
```

### Q: 如何插入表格？

**A:** 使用三线表：

```latex
\begin{table}[htbp]
  \centering
  \caption{表格标题}
  \label{tab:标签}
  \begin{tabular}{ccc}
    \toprule
    列1 & 列2 & 列3 \\
    \midrule
    数据1 & 数据2 & 数据3 \\
    \bottomrule
  \end{tabular}
\end{table}
```

### Q: 如何插入公式？

**A:** 行内公式：`$E=mc^2$`

独立公式：
```latex
\begin{equation}
  E = mc^2
  \label{eq:标签}
\end{equation}
```

## 📚 更多帮助

- 查看用户手册：编译后的 `cqjtuthesis.pdf`
- 查看示例：`contents/` 目录下的各章节文件
- 遇到问题：提交 GitHub Issue

## ✅ 检查清单

提交论文前，请确认：

- [ ] 封面信息填写完整准确
- [ ] 中英文摘要无拼写错误
- [ ] 目录自动生成（多次编译后）
- [ ] 所有图表都有题注和标签
- [ ] 参考文献正确引用（多次编译后）
- [ ] 致谢部分已填写
- [ ] PDF 生成成功，格式正确

## 🎓 祝你答辩顺利！

如有问题，欢迎联系或提交 Issue。祝你顺利完成毕业论文！
