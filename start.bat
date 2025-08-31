@echo off
echo 启动 Jekyll 本地服务器...
echo.
echo 如果提示"bundle"命令未找到，请先安装Ruby和Jekyll：
echo https://rubyinstaller.org/downloads/
echo.
echo 安装完成后运行：
echo gem install jekyll bundler
echo.

bundle install
bundle exec jekyll serve --livereload
pause