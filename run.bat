@echo off
set current_dir=%~dp0bin\
echo ----------------------
echo 当前目录为 
echo %current_dir%
echo ----------------------
echo 将%current_dir%..\ChangeCode.xml
echo 复制到
echo %current_dir%ChangeCode.xml
cd %current_dir%
copy /Y %current_dir%..\ChangeCode.xml %current_dir%ChangeCode.xml
echo ----------------------
echo 设置第三方jar包到classpath
set classpath=%current_dir%..\lib\dom4j-1.6.1.jar;%current_dir%..\lib\commons-io-2.4.jar;
echo ----------------------
echo 执行java程序
java code.ChangeCode
echo ----------------------
pause