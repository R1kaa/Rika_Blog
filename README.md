# Rika's Tech Blog

基于 Hugo + PaperMod 主题的个人技术博客

## 目录结构

```
blog/
├── content/           # 文章内容
│   ├── posts/        # 通用文章
│   ├── projects/     # 项目记录
│   ├── rl-notes/     # RL学习笔记
│   └── llm-notes/    # LLM学习笔记
├── static/           # 静态资源
├── hugo.yaml         # 配置文件
└── deploy.sh        # 部署脚本
```

## 文章分类

- **posts/** - 通用技术文章
- **projects/** - 项目记录（毕设、项目经历）
- **rl-notes/** - 强化学习笔记
- **llm-notes/** - 大模型笔记
- **notes/** - 其他学习笔记

## 本地预览

```bash
# 安装 Hugo（macOS）
brew install hugo

# 本地预览
hugo server -D
```

## 部署

1. Fork 这个仓库，或创建新的 GitHub 仓库
2. 在仓库 Settings -> Pages 中选择 gh-pages 分支
3. 推送到 main 分支后，GitHub Actions 会自动部署

## 写作流程

1. 复制 `content/posts/template.md` 作为模板
2. 修改 front matter 中的元信息
3. 写完文章后将 `draft: true` 改为 `draft: false`
4. 推送后自动部署

## 示例文章

- [毕设开题记录](content/projects/thesis-progress.md) - 记录毕设进展
