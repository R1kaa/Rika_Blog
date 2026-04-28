# Rika's Tech Blog

基于 Hugo + PaperMod 主题的个人技术博客

## 目录结构

```
blog/
├── content/           # 文章内容
│   ├── posts/        # 随笔
│   └── projects/     # 项目（含 MAD / VOCALOID / 学术记录）
├── assets/           # 自定义样式（PaperMod 扩展）
├── static/           # 静态资源（头像等）
├── .github/          # GitHub Actions
├── hugo.toml         # Hugo 配置文件
└── deploy.sh        # 部署脚本
```

## 内容板块

- **posts/** - 随笔、日常记录、技术思考
- **projects/** - 项目总栏，统一收纳工程实践、研究记录、MAD、VOCALOID
- **rl-notes/** - 强化学习笔记（可选，自行创建目录）
- **llm-notes/** - 大模型笔记（可选，自行创建目录）
- **notes/** - 其他学习笔记（可选，自行创建目录）

## 主页设计

全站主导航只保留两项：

- **随笔**：入口 `content/posts/`
- **项目**：入口 `content/projects/`，其中包含 `projects/mad/` 与 `projects/vocaloid/`

相关配置在 `hugo.toml`，主页内容在 `content/_index.md`，自定义样式在 `assets/css/extended/custom.css`，头像默认使用 `static/images/avatar.jpg`。

## 本地预览

```bash
# 安装 Hugo
# macOS: brew install hugo
# Windows: choco install hugo-extended -y  (或 Scoop / 手动安装)

# 安装 PaperMod 主题（本项目默认不把主题提交进仓库）
git clone https://github.com/adityatelange/hugo-PaperMod themes/PaperMod --depth=1

# 本地预览
hugo server -D
```

## 部署

1. Fork 这个仓库，或创建新的 GitHub 仓库
2. 在仓库 Settings -> Pages 中选择 gh-pages 分支
3. 推送到 main 分支后，GitHub Actions 会自动部署
4. GitHub Actions 会根据仓库类型（用户页/项目页）自动注入正确的 baseURL

## 写作流程

1. 复制 `content/posts/template.md` 作为模板
2. 修改 front matter 中的元信息
3. 写完文章后将 `draft: true` 改为 `draft: false`
4. 推送后自动部署

项目内容建议按分区写在：

- `content/projects/normal/`（普通项目）
- `content/projects/mad/`（MAD）
- `content/projects/vocaloid/`（VOCALOID）
- `content/projects/`（工程/研究项目）

## 示例文章

- [毕设开题记录](content/projects/normal/thesis-progress.md) - 记录毕设进展
