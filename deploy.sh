rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "first commit" &&
git branch -M rain &&
git remote add origin git@github.com:buranxiangsi/rainUi-1.git &&
git push -f -u origin rain &&
cd -
echo git@github.com:buranxiangsi/rainUi-1/#/