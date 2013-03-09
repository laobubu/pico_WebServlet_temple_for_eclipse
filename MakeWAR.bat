%~d0
cd %~dp0
rmdir /s /q temp
mkdir output
del output/out.war
del out.war
mkdir temp
mkdir temp\WEB-INF
mkdir temp\WEB-INF\classes
mkdir temp\WEB-INF\lib
mkdir temp\META-INF
copy web.xml temp\WEB-INF
xcopy /s bin\* temp\WEB-INF\classes
xcopy /s class\* temp\WEB-INF\classes
xcopy /s META-INF\* temp\META-INF
xcopy /s lib\* temp\WEB-INF\lib
xcopy /s static\* temp\
del temp\WEB-INF\lib\servlet-api.jar
cd temp
7z a ../out.zip *
cd ..
rename out.zip out.war
move out.war output
rmdir /s /q temp