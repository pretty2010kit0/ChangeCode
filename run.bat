@echo off
set current_dir=%~dp0bin\
echo ----------------------
echo ��ǰĿ¼Ϊ 
echo %current_dir%
echo ----------------------
echo ��%current_dir%..\ChangeCode.xml
echo ���Ƶ�
echo %current_dir%ChangeCode.xml
cd %current_dir%
copy /Y %current_dir%..\ChangeCode.xml %current_dir%ChangeCode.xml
echo ----------------------
echo ���õ�����jar����classpath
set classpath=%current_dir%..\lib\dom4j-1.6.1.jar;%current_dir%..\lib\commons-io-2.4.jar;
echo ----------------------
echo ִ��java����
java code.ChangeCode
echo ----------------------
pause