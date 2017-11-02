
# Mac OS 学习笔记

## 常用操作

### 快捷键中的符号分别代表什么

快捷键中常用符号⌘（command）、⌥（option）、⇧（shift）、⇪（caps lock）、⌃（control）、↩（return）、⌅（enter）。

### 如何剪切文件

`command + option + v`

### 删除文件

#### 如何删除文件

`Ctrl＋ Delete`，即可将文件放入废纸篓。清空废纸篓(不提示) `Command + Option + Shift + Delete`。
删除软件也可以使用同样的操作。

#### 如何遍历子目录并删除指定文件

使用find命令，而不是rm命令。

```sh
find . -name '*.aux' -delete
```

#### 如何设定快捷键

常用功能都用快捷键。为保持与windows同样的操作习惯，减少鼠标点击，我们有必要修改快捷键。打开“系统偏好设置…”，在设置面板里选择 “键盘”，切到 “键盘快捷键” 标签，即可设定全局性的快捷键，也可为特定软件的特定菜单功能设定快捷键。

Mac OS 考虑到Windows 用户的习惯，允许用户修改修饰键，如用`Ctrl`代替`Command`。

#### 如何进行VPN设置

“系统偏好设置…”，选择“网络”，添加VPN设置，选择合适的协议，输入账号信息即可。

#### 如何快速启动终端

使用快捷键启动spotlight，然后搜索“终端”或者“terminal”。

#### 系统备份

Time Machine 会自动备份整个 Mac，包括系统文件、应用软件、帐户、偏好设置、电子邮件、音乐、照片、影片和文稿。而 Time Machine 与其他备份应用软件的区别在于它不仅能备份所有文件，还能够记住系统在任意一天的状态，因此您可以重新回到过去某个时段的 Mac。Time Machine 会保留过去 24 小时的每小时备份、过去一个月的每日备份及每周备份，备份驱动器已满后会自动删除旧的备份，保证备份的持续进行。

#### 如何安装字体

与windows类似，下载字体后，双击即可安装。

#### 如何在finder中显示路径名称

在finder中选择“显示”菜单中的“显示／隐藏路径栏”选项。

### 如何更改文件的默认打开方式

右键点击你要修改地文件->显示简介->打开方式->选择了新的程序之后->全部更改.

### 如何在shell脚本中调用函数

```sh
sh /directory/script.sh
```

shell中包含执行命令，那么子命令并不影响父级的命令，在子命令执行完后再执行父级命令。子级的环境变量不会影响到父级。

这种调用方式为fork，是最常用的调用方式, 就是直接在脚本里面调用script.sh这个脚本。运行的时候开一个sub-shell执行调用的脚本，sub-shell执行的时候，parent-shell还在。sub-shell执行完毕后返回parent-shell，sub-shell从parent-shell继承环境变量，但是sub-shell中的环境变量不会带回parent-shell。

### 如何在shell中调用浏览器
``` sh
open http://www.baidu.com
```
即可使用默认浏览器打开指定的网址。如果要指定特定的浏览器，可以使用`-a`参数：
``` sh
open -a firefox http://www.baidu.com
```
### 如何执行脚本

执行当前文件夹中的脚本之前，需要赋予脚本可执行的权限：

```sh
chmod +x scriptname.sh
```

然后在当前文件夹中执行：

```sh
./scrptname.sh
```

### 执行脚本时出现No such file or directory

执行.sh文件，提示No such file or directory的问题，其中一个原因是使用windows换行格式保存过文件，将其换行格式调整为unix格式即可：

```sh
vim desc.sh
:set ff=unix
:wq
```

## MacTex 设定

LaTex的核心在于其命令行工具，故而MacTex 与Windows 版本的绝大部分操作都类似。

#### 如何使用命令行编译tex文件

编译tex文件：

```sh
xelatex LearningMac.tex
```

如何通过命令行预览pdf

```sh
open -a Preview xxx.pdf
```

Preview 程序会锁定PDF文件，当重新生成PDF文件再次预览时，通常会跳转到首页，选择单页显示`Command＋2`，则可避免这种情况的出现。

#### 如何更新MacTex

```sh
sudo tlmgr update --self
sudo tlmgr update --all
```

## Sublime Text 的设定
Sublime Text 的Mac版本中，一些快捷键与windows版本有所区别，可按照习惯进行定制。

### 如何在命令行中执行subl

140. 添加link
    执行这一步时，要确保你已经在相应的地方创建了bin目录。
    ```sh
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
    ```
145. 编辑PATH

    ```sh
    vim ~/.bash_profile
    ```
150. 添加PATH

    ```sh
    export PATH=/usr/local/bin:$PATH
    ```
155. 应用

    ```sh
    source ~/.bash_profile
    ```

## PHP开发环境的设置

快速搭建PHP开发环境的方法有很多，常使用集成开发环境，如XAMPP、MAPP等等。

### cURL中使用OpenSSL

在OS X的最近版本中，PHP的cURL扩展使用OS自带的协议，而非openssl，导致curl的https功能无法使用，解决办法是使用openssl替代。

173. 从[https://www.openssl.org/source/](https://www.openssl.org/source/)下载OpenSSL并解压缩至`<your_dir>/openssl`。
174. 进入到解压后的目录：

    ```sh
    cd <your_dir>/openssl
    ```

180. 设置编译参数：

    ```sh
    ./Configure darwin64-x86_64-cc --prefix=/usr
    ```

186. 编译
     ```sh
     make clean && make && sudo make install
     ```

OpenSSL会被安装至/usr并替换掉之前的版本。

>2017-11-2更新：在Mac OS的新版本（El Capitan）中，使用了`System Integrity Protection`的技术，使得`/usr/include`目录无法写入内容，因此上述办法无法实施。因此，更好的办法是使用homebrew安装openssl。
>``` sh
>brew update
>brew install openssl 或者 brew upgrade openssl
>ln -s /usr/local/Cellar/openssl/1.0.1g/bin/openssl /usr/local/bin/openssl
>hash -r
>```
>
>确保上述ln的命令路径正确。 `/usr/local/bin` 的优先级别高于
>   `/usr/bin`，因此，会用brew安装的openssl替换到系统自带的openssl

### OS X中临时文件夹的读取存储权限

在Mac OS中，一般用户的读写权限是受到限制的，这样下列代码就无法得到预期的效果：

```sh
tempnam(sys_get_temp_dir(),'test');
```

解决的办法是，在finder中更改临时文件夹的权限，使得任何人都可以读取即可。

