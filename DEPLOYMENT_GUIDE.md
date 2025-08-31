# GitHub Pages 部署指南

## 项目概述

这是一个基于Jekyll的静态博客网站，设计用于GitHub Pages托管。网站具有响应式设计、分类标签系统、搜索功能等现代化特性。

## 快速开始

### 方法1：使用GitHub Codespaces（推荐）

1. 将此项目上传到GitHub
2. 在GitHub上点击 "Code" → "Codespaces" → "Create codespace on main"
3. 在codespace终端运行：
   ```bash
   bundle install
   bundle exec jekyll serve --host=0.0.0.0
   ```
4. 点击codespace中弹出的端口转发链接查看网站

### 方法2：本地开发环境设置

#### Windows系统

1. **安装Ruby和DevKit**
   - 下载Ruby+DevKit：https://rubyinstaller.org/downloads/
   - 安装时勾选 "Add Ruby executables to your PATH"
   - 安装完成后运行 `ridk install`

2. **安装Jekyll**
   ```bash
   gem install jekyll bundler
   ```

3. **运行项目**
   ```bash
   cd c:\Users\Shitao\Desktop\jing
   bundle install
   bundle exec jekyll serve
   ```

#### macOS系统

```bash
# 安装Ruby（如果尚未安装）
brew install ruby

# 安装Jekyll
gem install jekyll bundler

# 运行项目
cd /path/to/project
bundle install
bundle exec jekyll serve
```

#### Linux系统

```bash
# Ubuntu/Debian
sudo apt-get install ruby-full build-essential zlib1g-dev

# 安装Jekyll
gem install jekyll bundler

# 运行项目
cd /path/to/project
bundle install
bundle exec jekyll serve
```

## GitHub Pages部署步骤

### 1. 创建GitHub仓库

1. 登录GitHub
2. 创建新仓库：`yourusername.github.io`（用户名必须匹配）
3. 上传项目文件

### 2. 启用GitHub Pages

1. 进入仓库设置 → Pages
2. 选择部署源：GitHub Actions
3. 提交代码后自动部署

### 3. 验证部署

- 访问：https://yourusername.github.io
- 首次部署可能需要5-10分钟

## 项目结构说明

```
├── _config.yml              # Jekyll配置文件
├── _layouts/                # 页面模板
│   ├── default.html         # 默认布局
│   └── post.html           # 文章布局
├── _posts/                  # 博客文章
├── assets/                  # 静态资源
├── .github/workflows/       # GitHub Actions工作流
├── index.html              # 主页
├── about.markdown          # 关于页面
├── archive.html            # 归档页面
├── categories.html         # 分类页面
├── search.html            # 搜索页面
├── Gemfile                # Ruby依赖
└── README.md              # 项目文档
```

## 添加新文章

1. 在 `_posts/` 目录创建新文件
2. 文件名格式：`YYYY-MM-DD-标题.md`
3. 包含YAML前置信息：

```yaml
---
title: "我的新文章"
date: 2024-01-15
categories: [生活, 技术]
tags: [日记, 教程]
image: /assets/images/my-image.jpg
---

文章内容...
```

## 自定义配置

编辑 `_config.yml`：

```yaml
title: "你的博客标题"
description: "博客描述"
url: "https://yourusername.github.io"
author: "你的名字"
```

## 故障排除

### 常见问题

1. **样式不加载**
   - 检查_config.yml中的baseurl设置
   - 确保使用正确的URL格式

2. **文章不显示**
   - 检查文件名日期格式
   - 确保YAML前置信息格式正确

3. **图片不显示**
   - 确认图片路径正确
   - 图片应放在 `assets/images/` 目录

### 本地调试

使用浏览器开发者工具查看控制台错误信息，或运行：

```bash
bundle exec jekyll serve --verbose
```

## 高级功能

### 添加评论系统

集成Disqus或GitHub Issues作为评论系统。

### 添加Google Analytics

在 `_config.yml` 中添加跟踪ID：

```yaml
google_analytics: G-XXXXXXXXXX
```

### 自定义主题

修改 `_layouts/default.html` 和CSS样式来自定义外观。

## 技术支持

- [Jekyll官方文档](https://jekyllrb.com/docs/)
- [GitHub Pages文档](https://docs.github.com/en/pages)
- [Tailwind CSS文档](https://tailwindcss.com/docs)