cd ..\modules\axelor-open-suite
git add -A
git commit -m %1
git push origin lim

cd ..\..
git add .
git commit -m %1
git push origin lim