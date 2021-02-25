rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:Joish1/Joish-ui-website.git &&
git push -f -u origin main &&
cd -
echo https://joish1.github.io/Joish-ui-website/index.html