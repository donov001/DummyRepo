REM - Wrapper script to Setup all of the LeoProcessor dependencies
@echo Off

rem Save CWD
pushd "%~dp0"

echo [Setting up Leo Processor]
REM Set the Current DIR to the location of LeoProcessor.
cd /d %LeoHome%\processor

REM Install Dependencies from local cache.

echo [Installing python dependencies....]
py -m pip install -r requirements.txt --no-index --find-links ..\Dependencies
set EX=%ERRORLEVEL%
if "%EX%" neq "0" (
    echo "Failed to Install dependencies." 
    echo "%EX%"
    popd
    exit /b %EX%
)
echo [Install Check. Running sample testCase....]

py leoprocessor.py ..\samples\testcases\quickdemo.json
set EX=%ERRORLEVEL%
if "%EX%" neq "0" (
    echo "Failed to Run Sample testCase." 
    echo "%EX%"
    popd
    exit /b %EX%
)

rem Restore CWD
popd
echo [Setting up Leo Processor...Completed]
