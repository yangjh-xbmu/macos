# Alferd

Alferd是一款提高效率的工具，调用快捷键为`option+space`，除了默认功能外，利用其提供的workflow，能大大减少鼠标点击次数，所以有必要培养使用Alferd的使用习惯，能用Alferd办的事就不要点鼠标，这样非常有助于心流的保持。

## 常用基础功能

### 使用bing进行搜索

呼出后，在搜索框中键入`bing 要搜索内容`即可打开默认浏览器进行bing搜索。

### 打开特定网址

在搜索框中键入诸如`http://www.bing.com`的内容，即可打开默认浏览器进行浏览。

### 关机

呼出后键入`shut down`，即可实现关机。

### 搜索某个文件夹

呼出后键入`open xxx`，可以在finder中打开文件夹。

## 常用Workflow

### Open with Sublime Text

在Sublime Text 3 编辑器中打开当前文件或文件夹`os`，或者搜索并打开文件或者文件夹`fos`。

Triggers：os/fos

### TerminalFinder

打开当前Finder目录到终端Terminal，或者在终端Terminal打开当前Finder目录。

Triggers：

``` sh
ft: Finder -> Terminal
tf: Terminal -> Finder
```

### YoudaoTranslate

使用有道智云，进行中英文互译，回车后查询的结果放入到剪贴板。Triggers：yd

### dash

dash是一款管理技术文档的软件，能将众多技术手册下载到本地进行阅读和搜索，它还能很好得和众多软件进行整合，比如Alferd。在Alferd中的用法有两种：一种为`dash html:form`，这种形式不需要安装workflow；另一种`html form`需要安装workflow后才能使用。
