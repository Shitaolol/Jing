# 我的生活记录 - GitHub Pages

这是一个使用 Jekyll 构建的个人博客网站，托管在 GitHub Pages 上。

## 功能特点

- 📱 响应式设计，支持移动端
- 🎨 使用 Tailwind CSS 样式框架
- 📝 支持博客文章分类和标签
- 🔍 内置搜索功能
- 🌓 支持深色模式
- 📊 归档页面展示所有文章

## 本地运行

### 安装依赖

1. 确保已安装 Ruby 和 Bundler
2. 在项目根目录运行：
   ```bash
   bundle install
   ```

### 启动本地服务器

```bash
bundle exec jekyll serve
```

访问 http://localhost:4000 查看网站

## 添加新文章

在 `_posts` 目录下创建新的 Markdown 文件，文件名格式：`YYYY-MM-DD-标题.md`

文章头部需要包含 YAML 前置信息：

```yaml
---
title: "文章标题"
date: 2024-01-01
categories: [分类1, 分类2]
tags: [标签1, 标签2]
image: /assets/images/featured-image.jpg
---
```

## 部署到 GitHub Pages

1. 将此仓库推送到 GitHub
2. 在仓库设置中启用 GitHub Pages
3. 选择部署源为 GitHub Actions

## 文件结构

```
├── _config.yml          # Jekyll 配置文件
├── _layouts/            # 页面模板
├── _posts/              # 博客文章
├── assets/              # 静态资源
├── Gemfile              # Ruby 依赖
├── index.html           # 主页
├── about.markdown       # 关于页面
├── archive.html         # 归档页面
├── categories.html      # 分类页面
└── search.html          # 搜索页面
```

## 自定义配置

编辑 `_config.yml` 文件来自定义网站信息：

```yaml
title: 你的网站标题
description: 网站描述
url: "https://yourusername.github.io"
```