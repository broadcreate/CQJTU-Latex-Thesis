# Git 仓库初始化指南

如果你想将这个模板发布到 GitHub 或其他 Git 平台，请按照以下步骤操作：

## 初始化 Git 仓库

```bash
cd C:\Edu\course\CQJTU-Latex-Beamer\cqjtuthesis
git init
git add .
git commit -m "Initial commit: CQJTUThesis v1.0.0"
```

## 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 创建新仓库，名称建议：`CQJTUThesis`
3. 不要初始化 README、.gitignore 或 LICENSE（我们已经有了）

## 推送到 GitHub

```bash
git remote add origin https://github.com/你的用户名/CQJTUThesis.git
git branch -M main
git push -u origin main
```

## 创建第一个 Release

1. 在 GitHub 上进入 Releases 页面
2. 点击 "Create a new release"
3. Tag version: `v1.0.0`
4. Release title: `CQJTUThesis v1.0.0 - 首个版本发布`
5. 描述：

```markdown
## 🎉 重庆交通大学本科毕业论文 LaTeX 模板 v1.0.0

这是 CQJTUThesis 的第一个正式版本！

### 主要功能
- ✅ 完整的本科毕业论文格式支持
- ✅ 符合学校2024年最新要求
- ✅ 跨平台编译脚本
- ✅ 详细的文档和示例

### 使用方法
请参阅 README.md 和 QUICKSTART.md

### 下载说明
下载 Source code (zip) 即可获得完整模板。
```

## 添加 LICENSE 文件

在项目根目录创建 `LICENSE` 文件：

```
LaTeX Project Public License
Version 1.3c 2008-05-04

Copyright (C) 2024 CQJTUThesis Development Team

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3c of this license or (at your option) any later
version.
```

## 常用 Git 命令

```bash
# 查看状态
git status

# 添加所有更改
git add .

# 提交更改
git commit -m "描述信息"

# 推送到远程
git push

# 查看历史
git log --oneline

# 创建新分支
git checkout -b feature/新功能

# 合并分支
git checkout main
git merge feature/新功能
```

## .gitignore 说明

已创建的 `.gitignore` 文件会忽略：
- LaTeX 临时文件（.aux, .log, .out等）
- 编辑器临时文件
- 系统文件（.DS_Store, Thumbs.db等）

但**保留**：
- 生成的 PDF 文件（供下载）
- 生成的 .cls 文件（供直接使用）

如果不想跟踪PDF和CLS，取消注释：
```gitignore
# *.pdf
# cqjtuthesis.cls
```

## 贡献指南

如果接受其他人的贡献，创建 `CONTRIBUTING.md`：

```markdown
# 贡献指南

感谢你考虑为 CQJTUThesis 做出贡献！

## 如何贡献

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启一个 Pull Request

## 代码规范

- 遵循现有的代码风格
- 添加适当的注释
- 更新相关文档

## Issues

如果发现问题，请创建 Issue 并提供：
- 详细的问题描述
- 复现步骤
- 你的系统环境（TeX 版本等）
```

Happy Git-ing! 🚀
