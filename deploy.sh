#!/bin/bash
rm -rf ./public
rscript -e "blogdown::build_site()"
cd ./public
git init .
git add .
git config user.name "Zac Harmany"
git config user.email "zac@zacbook.net"
git commit -m "Deploy"
git push git@github-zacbook:zacbook/zacbook.net.git --force master
rm -rf .git
