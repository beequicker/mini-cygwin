@echo off
rem modified by vrix.yan 2010.12.16 09:10
rem bash ndk-build NDK_LOG=1 V=1 -C %1 %2
bash ndk-build -C %1 %2
@echo on