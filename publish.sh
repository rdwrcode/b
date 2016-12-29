git checkout -B gh-pages &&
hugo &&
git add -f public &&
git commit -am "Rebuild blogs" &&
git filter-branch -f --prune-empty --subdirectory-filter public &&
git push -f origin gh-pages &&
git checkout -
