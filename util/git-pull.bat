@ECHO OFF
IF "%~1"=="" (
rem set /p gitBranch=Which branch: 
set gitBranch=lim
) ELSE (
set gitBranch=%~1
)

@ECHO ON

cd ..\modules\axelor-open-suite
git checkout %gitBranch%
git pull origin %gitBranch%

cd ..\..
git checkout %gitBranch%
git pull origin %gitBranch%
