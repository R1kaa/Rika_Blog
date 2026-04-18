#!/bin/bash
# Deploy to GitHub Pages

set -euo pipefail

# 1. 本地预览
# hugo server -D

# 2. 构建静态文件
if [ ! -d "themes/PaperMod" ]; then
  git clone https://github.com/adityatelange/hugo-PaperMod themes/PaperMod --depth=1
fi
hugo --minify

# 3. 部署到 GitHub Pages
# 先在 GitHub 创建仓库，然后在本地执行：
git subtree push --prefix=public origin gh-pages

# 或者使用 GitHub Actions 自动部署（推荐）
