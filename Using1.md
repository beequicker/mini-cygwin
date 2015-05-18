# Introduction #

one click build for saving your time.can make you lazy,but we need it.

**step 1**
method 1
download zbuild.bat from Downloads list.copy it to your android project root path.

method 2
copy contents below in Details Secion to zbuild.bat,and copy zbuild.bat to your anroid project root path.

**step 2**
then you can build your jni source by clicking zbuild.bat.

very simple way for ndk development.

# Details #

@echo off

rem ----------------------------------------------------------------------------------

rem  zbuild.bat for eazy ndk development.

rem  copy this file to project path (AndroidManifest.xml's  path)

rem  verion 1.1                         by vrix.yan 2010.12.21

rem ----------------------------------------------------------------------------------

PATH=c:\cygwin;c:\cygwin\bin;C:\WINDOWS\system32

cygpath %~dp0 >zbuild.ini

set  /P TARGET=<zbuild.ini

del zbuild.ini

call ndk.bat

call ndk-build.bat  %TARGET%  -B

@echo on

pause