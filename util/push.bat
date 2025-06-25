@echo off
setlocal ENABLEDELAYEDEXPANSION

echo ========================================
echo Auto Push Git Repo and Submodules
echo ========================================
echo.

REM === Prompt for commit message ===
set /p commitMsg=Enter commit message: 

echo.
echo === Pushing submodules ===

REM === Loop through submodules ===
for /f "tokens=2 delims== " %%s in ('git config --file .gitmodules --get-regexp path') do (
    echo.
    echo --- Pushing submodule: %%s ---
    pushd %%s
    git add .
    git commit -m "!commitMsg!" 2>nul
    git push
    popd
)

echo.
echo === Pushing main repository ===
git add .
git commit -m "!commitMsg!" 2>nul
git push

echo.
echo === Push Complete ===
pause
