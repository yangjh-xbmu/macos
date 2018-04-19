# 强大的包管理工具Homebrew

Homebrew是一款自由及开放源代码的软件包管理系统，用以简化Mac OS X系统上的软件安装过程，
使用 Homebrew 安装 Apple 没有预装但你需要的东西。最初由马克斯·霍威尔（Max Howell）写成，因其可扩展性得到了一致好评。

在Mac中安装软件时，优先考虑使用Homebrew进行安装和管理。

## 安装

在其官方网站`https://brew.sh/index_zh-cn`复制安装脚本，然后在终端中执行脚本即可。Homebrew 不会将文件安装到它本身目录之外，所以您可将 Homebrew 安装到任意位置。

安装之后运行：

```sh
brew update
brew doctor
```

排除检查出的错误及警告信息，确保brew正确安装。

之后，添加Homebrew的路径到终端`~/.bash_profile`：

```sh
vi ~/.bash.profile
```

```sh
export PATH="/usr/local/bin:$PATH"
```

## 基本用法

```sh
brew install xxx
```
安装xxx软件

```sh
brew uninstall xxx
```
卸载xxx软件

```sh
brew upgrade xxx
```
更新xxx软件

```sh
brew search xxx
```
搜索xxx软件

## 常用软件

```sh
brew install node
brew install curl
brew install tree
brew install openssl
brew install python
```
