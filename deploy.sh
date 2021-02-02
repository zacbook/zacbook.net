#!/usr/bin/env bash
rm -rf ./public
mkdir ./public
# To ALWAYS rebuild the .Rmd to .html files, use the build_rmd=TRUE flag
Rscript -e "blogdown::build_site(build_rmd=TRUE)"
cd ./public
git init -b 'master' .
git add .
git config user.name "Zac Harmany"
git config user.email "zac@zacbook.net"
git commit -m "Deploy"
git push git@github-zacbook:zacbook/zacbook.net.git --force master
rm -rf .git
