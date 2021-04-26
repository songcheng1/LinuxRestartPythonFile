### 安卓代理证书安装
> 目前安卓7.0以上 系统不信任用户证书，所以我们平常的方式安装证书的方式是不可取的，我们需要将代理软件的证书安装在系统目录。

> 如何进行安装系统证书安装请看教程 https://blog.csdn.net/qq_29176323/article/details/112816633


## HOOK工具安装
> 1. pip install objection==1.9.6
> 2. 查看 frida 版本号 pip show frida
> 3. 去 github 下载对应的 frida 驱动 模拟器是32位的
> 4. 下载地址 https://github.com/frida/frida/releases/tag/14.0.1
> 5. 对应驱动名称为  `frida-server-14.0.1-android-x86.xz`
> 6. 解压;将文件利用`adb` 推送到 模拟机的 /data/local/tmp 目录下
> 7. ADB 安装教程 https://sspai.com/post/40471
> 8. 进入 模拟器 命令行 `adb shell`
> 9. root 模式 `su`
> 10. 进入`/data/local/tmp`目录 `cd /data/local/tmp`
> 11. 给 frida 驱动 执行权限 `chmod 777 驱动文件名` 
> 12. 执行 驱动  ./驱动文件名


## SSL关闭
> 1. 命令输入 `objection -d -g com.maersk.trackandtrace.maerskline explore` 进入objection交互界面
> 2. 关闭SSLping 输入命令 `android sslpinning disable`
> 3. 没有什么问题的话 就能正常抓到 app 的包了
