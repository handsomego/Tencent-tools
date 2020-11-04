这个项目是开源的，只是自己私用，禁止商用。

## 作用

把tx视频只能开vip，才能看的VIP缓存的视频，普通用户能够打开。

## 依赖的软件 

[Termux](https://f-droid.org/F-Droid.apk)

## 配置Termux

可以参考[国光的博客](https://www.sqlsec.com/)：[Termux高级终端安装使用教程](https://www.sqlsec.com/2018/05/termux.html)
建议先换一下，apt源，因为Termux是外国的源，下载速度受到影响。
文件管理(一般系统自带，但要求能够找到com.tencent.qqlive目录;
会使用"排序"，能够快速找到自己下载的缓存视频)

```
termux-setup-storage ##获取download目录，这时会跳出“对话框”，点击“同意”，还会会获取：picture，dcim，movies，shared，music
```

## 用法
首先，要把缓存视频的目录找出来，放到Downloads,因为Termux只能读取系统几个特定文件，
不能越权，如果root后，另当别论这里都是针对未root的手机。

```
apt install git
git clone https://github.com/handsomego/tencent-tools
cd tencent-tools
chmod +x pastFile.sh
mv pastFile.sh ~
cd
./pastFile.sh storage/downloads/mdXXXX_XX.hls/ n m #注意：文件管理“下载”目录是，Download，Termux下载目录是
#XXX表示具体你下载的视频保存在哪个目录，n、m表示具体从第几个，缓存开始合并和从结束位置,建议分成两次
操作，比如有个视频缓存下来，里面有0~299个视频，理应直接操作n、m是0、300，但这样运行只有0~199合并成功。
不知道为什么，但这时可以分两步，0~199，200~300进行操作。
```
Win操作系统装，有类似命令，只不过那个涉及CMD命令，而且本人只学了shell，所以移植到，win上
可能会等很长时间。
   
