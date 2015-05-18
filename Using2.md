# Introduction #

**Install**
download mini-cygwin.7z and unarchive it to your Disk C

then you have c:\cygwin as the root path;

click c:\cygwin\cygwin.reg for register mini-cygwin;

well done! Install Finished.

**File List**

\bin          # exe files

> bash.exe

> cp.exe

> astyle.exe

> ...

\docs

> mini-cygwin-en.txt

> mini-cygwin-cn.txt

\cygdrive      # nothing #

\tmp           # nothing #

cygwin.bat

env.bat

ndk.bat          # ndk PATH settings #

arm-gcc.bat

jz47xx.bat

ndk-build.bat

**Modify**
mini-cygwin is small and cute, so keep it in disk C;

if your ndk's path is not d:\android\android-ndk,you can change NDK.bat

see it for more detail,it just do "cd [path](ndk.md)" for mini-cygwin;

if you are not work with android,just for ADS,RVDS or other toolchain.you just remove
"call ndk.bat" from env.bat.