cd ..\modules\axelor-open-suite
git add -A
git commit -m %1
git push origin main

cd ..\..
git add modules\axelor-open-suite
git commit -m %1
git push origin main