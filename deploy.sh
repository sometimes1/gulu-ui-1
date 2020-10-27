rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:sometimes1/gulu-ui-website.git &&
git push -f -u origin master &&
cd -
echo https://sometimes1.github.io/gulu-ui-website/index.html