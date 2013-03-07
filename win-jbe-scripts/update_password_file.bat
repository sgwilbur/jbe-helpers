REM v1.0 26MAR2011 swilbur
@echo on
call env.bat
cd %WORK_DIR%
@echo on

%JBE% -createPasswordFile %PASS_FILE%
popd
