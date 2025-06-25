@ECHO OFF
IF "%~1"=="" (
set /p commitMsg=Enter commit message: 
) ELSE (
set commitMsg = %1
)

@ECHO ON

cd ..\modules\axelor-open-suite
git add -A
git commit -m "%commitMsg%"
git push origin lim

cd ..\..
git add .
git commit -m "%commitMsg%"
git push origin lim