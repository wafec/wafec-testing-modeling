@echo off

set JAVA8_HOME=C:\Program Files\Java\jdk1.8.0_261
set PATH=%JAVA8_HOME%\bin;%PATH%
set STATEMUTEST_DIR=%cd%
set WORK_DIR=%1
set MODEL_CONF=%2
set DEST_RESULTS=%3
cd %WORK_DIR%
echo StateMuTest Directory: %STATEMUTEST_DIR%
echo Work Directory: %WORK_DIR%
echo Model Configuration: %MODEL_CONF%
echo Results Destination: %DEST_RESULTS%
mkdir %DEST_RESULTS%
java -cp %STATEMUTEST_DIR%\libs\statemutest-all-1.0.jar statemutest.application.TestCaseGeneration -s %MODEL_CONF% -d %DEST_RESULTS%
cd %STATEMUTEST_DIR%
