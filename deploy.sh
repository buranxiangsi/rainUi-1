rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "first commit" &&
git branch -M main &&
git remote add origin git@github.com:buranxiangsi/rain.git &&
git push -f -u origin main &&
cd -
echo https://buranxiangsi.github.io/rain/#/