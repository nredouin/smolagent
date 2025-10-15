@echo off
setlocal

REM ============================================================================
REM Smolagents Workshop - Automated Setup Script (Windows)
REM Converted from setup.sh for Windows CMD
REM ============================================================================

echo [1/8] Creating virtual environment...
REM Prefer the Python launcher on Windows if available; fall back to python
where py >nul 2>nul
if %ERRORLEVEL%==0 (
  set "PY=py"
) else (
  set "PY=python"
)

%PY% -m venv smolagents_env
if errorlevel 1 goto :error

echo [2/8] Activating virtual environment...
call smolagents_env\Scripts\activate
if errorlevel 1 goto :error

echo [3/8] Upgrading pip...
%PY% -m pip install --upgrade pip
if errorlevel 1 goto :error

echo [4/8] Installing requirements (if requirements.txt exists)...
if exist requirements.txt (
  pip install -r requirements.txt
  if errorlevel 1 goto :error
) else (
  echo   No requirements.txt found, skipping.
)

echo [5/8] Verifying smolagents installation...
%PY% -c "import smolagents; print('smolagents installed successfully! Version:', smolagents.__version__)"
if errorlevel 1 (
  echo   smolagents not detected yet. If this is expected, ensure it is listed in requirements.txt.
)

echo [6/8] Installing Jupyter kernel...
%PY% -m ipykernel install --user --name=smolagents_env --display-name "Python (smolagents)"
if errorlevel 1 goto :error

echo.
echo [7/8] Setup complete!
echo.
echo To start working:
echo   1. Activate environment: call smolagents_env\Scripts\activate
echo   2. Start Jupyter: jupyter notebook
echo   3. Open the workshop notebook
echo.
echo To deactivate the environment: deactivate
echo.

goto :end

:error
echo.
echo Setup failed with error level %ERRORLEVEL%.
echo Make sure Python 3.8+ is installed and available on PATH.
exit /b %ERRORLEVEL%

:end
endlocal
