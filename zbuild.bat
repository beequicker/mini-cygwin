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