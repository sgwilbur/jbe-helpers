@echo off
call env.bat
cd %WORK_DIR%\%ENGINE_ID%
@echo on

%JBE% -repository %REPO_URL% -userId %BUILD_USER% -passwordFile %PASS_FILE% -engineId %ENGINE_ID%
