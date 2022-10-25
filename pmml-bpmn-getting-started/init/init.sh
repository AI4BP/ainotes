#!/bin/sh
# bash init.sh
git init
git config core.sparsecheckout true
git remote add -f origin https://github.com/AI4BP/ainotes.git
echo "pmml-bpmn-getting-started/" >> .git/info/sparse-checkout
echo ".gitignore" >> .git/info/sparse-checkout
git pull origin main
cp ./pmml-bpmn-getting-started/init/Dockerfile ./
cp ./pmml-bpmn-getting-started/init/requirements.txt ./