# Alferd

Alferd是一款提高效率的工具，调用快捷键为`option+space`，除了默认功能外，利用其提供的workflow，能大大减少鼠标点击次数，所以有必要培养使用Alferd的使用习惯，能用Alferd办的事就不要点鼠标，这样非常有助于心流的保持。

## 常用基础功能

### 文件操作

通过`find`、`open`、`in`等关键词搜索文件。

1. `find`是定位文件，
2. `open`是定位并打开文件，
3. `in`是在文件中进行全文检索。

以上三种检索方式基本上可以找到任何你想找的文件。

### 使用bing进行搜索

呼出后，在搜索框中键入`bing 要搜索内容`即可打开默认浏览器进行bing搜索。

### 打开特定网址

在搜索框中键入诸如`http://www.bing.com`的内容，即可打开默认浏览器进行浏览。

### 系统快捷操作

如呼出后键入`shut down`，即可实现关机。详细功能见下面的表格：

|             指令              |       功能       |
| ----------------------------- | ---------------- |
| Screen Saver                  | 打开屏幕保护程序 |
| Show Trash                    | 打开回收站       |
| Empty Trash                   | 清空回收站       |
| Log Out                       | 退出登录         |
| Sleep                         | 休眠             |
| Sleep Displays                | 关闭显示器       |
| Lock                          | 锁定             |
| Restart                       | 重启             |
| Shut Down                     | 关机             |
| Hide (applications)           | 隐藏某程序       |
| Quit (applications)           | 退出某程序       |
| Force Quit (applications)     | 强制退出某程序   |
| Quit All (applications)       | 退出全部程序     |
| Eject (Local Mounted Volumes) | 推出本地盘       |
| Eject All                     | 推出所有盘       |

我经常用到的功能是关机和退出全部程序，这时候感觉软件注册费用交的很值。

### 剪贴板历史

默认情况下，剪贴板功能是关闭的，需要手工开启，设定快捷键之后，即可对剪贴板的历史记录进行操作。

## 常用Workflow

Workflow功能是付费项目，需要购买许可证才能使用。但真正让Alferd成为让人爱不释手的效率工具的是其开创性的Workflow功能。众多的Workflow可以让人从繁琐恼人的鼠标点击操作中解脱出来。

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

[下载地址](https://github.com/LeEnno/alfred-terminalfinder)

### Youdao

使用有道智云，进行中英文互译，回车后查询的结果放入到剪贴板。Triggers：yd

[下载地址](https://github.com/liszd/whyliam.workflows.youdao/releases)

### dash

dash是一款管理技术文档的软件，能将众多技术手册下载到本地进行阅读和搜索，它还能很好得和众多软件进行整合，比如Alferd。在Alferd中的用法有两种：一种为`dash html:form`，这种形式不需要安装workflow；另一种`html form`需要安装workflow后才能使用。

## 参考资料

1.[Alferd官方文档](https://www.alfredapp.com/help/features/)
1.[workflow库](http://www.packal.org/)
