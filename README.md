这个项目是开源的，只是自己私用，禁止商用。

## 作用

把tx视频只能开vip，才能看的VIP缓存的视频，普通用户能够打开。

## 依赖的软件 
[Termux](https://f-droid.org/F-Droid.apk)

文件管理(一般系统自带，但要求能够找到com.tencent.qqlive目录;
会使用"排序"，能够快速找到自己下载的缓存视频)
## 用法

首先，要把缓存视频的目录找出来，放到Downloads,因为Termux只能读取系统几个特定文件，
不能越权，如果root后，另当别论这里都是针对未root的手机。

```
git clone https://github.com/handsomego/tencent-tools
chmod +x pastFile.sh
./pastFile.sh storage/downloads/mdXXXX_XX.hls/ n m
#XXX表示具体你下载的视频保存在哪个目录，n、m表示具体从第几个，缓存开始合并和从结束位置
```
Win操作系统装，有类似命令，只不过那个涉及CMD命令，而且本人只学了shell，所以移植到，win上
可能会等很长时间。
   
