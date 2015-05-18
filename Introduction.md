# Introduction #

嵌入式开发环境中，cygwin是非常重要的工具，但是仔细研究一下却发现，我们装了好大一堆没有用的东西，经过我的简化，发现只要10MB以内的工具，就可以满足嵌入式开发的需要。特别是当我们的嵌入式项目都是用makefile编译的时候，其实cygwin只有很小的一部分有用，因为我们的toolchain都是独立于cygwin的，比如ads,rvds，arm-linux-gcc，mips-linux-gcc,sde,再加上android的ndk。
以上就是我的mini-cygwin诞生的前提了，其实mini-cygwin已经诞生将近5年了。但是一直只有我所待过或者是我们公司方案的设计公司的兄弟们在用，估计人数不会上千吧。今天我良心发现了，所以放在GOOGLE上供大家下载使用，希望能提高大家的工作效率。

mini-cygwin is a 7.7MB environment,which can support android ndk([r4](https://code.google.com/p/mini-cygwin/source/detail?r=4),[r5](https://code.google.com/p/mini-cygwin/source/detail?r=5)) development.

and it can support other toolchain either,eg. ads,rvds,arm-linux-gcc,mips-linux-gcc,sde-mips,and so on.

mini-cygwin is 5 years old,but this is the first time publishing it to everyone.

# Details #

**Mini-Cygwin v2.0.x** is the latest verison. download it,and unarchive it to disk c:

cygwin is the root path name of mini-cygwin,and it just have 3 directory.

.\cygwin\bin   usefull cygwin tools  (by cygnus)

.\cygwin\docs  documents of this environment (by vrix.yan)

.\cygwin       batch files for mini-cygwin   (by vrix.yan)


# 注意（Attention） #
> 如果你是开发android程序（ndk）,请修改 cygwin/ndk.bat (我的ndk目录是 d:/android/android-ndk,如果你的不是这个目录，就需要修改了）
> 如果你要使用arm-linux-gcc 编译，请把你的toolchain 复制到 cygwin/arm 目录（或者你修改我的arm-gcc.bat）
> 如果你要使用rvds,ads,恐怕自己要修改一些env.bat，增加path,或者像我一样搞个rvds.bat出来。

> 环境设置好之后，你只需要把zbuild.bat 复制到你的android 工程目录（就是AndroidManifest.xml所在的那个目录）。然后运行它就可以了。为啥zbuild.bat 要叫zbuild呢？因为你按名字排序你的目录，它总是会列在最下边，所以很容易找到它。当然，你也可以在桌面上创建一个快捷方式，并把快捷方式的名字命名为你工程的名字，这样就更方便了。

> 如果你已经安装了cygwin，而且不想用我的精简版，而你又想使用one click build方法来编译你的android项目，那我提供了 cygwin-ocb.7z提供下载，只有3个批处理就可以满足你的需求。