git add .
git commit -m $1
git push -u origin master
git push -u hub master
cd docs
git add .
git commit -m $1
git push
