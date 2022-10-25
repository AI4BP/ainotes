#!/bin/bash
# bash init.sh

PS3='Please enter your choice: '
options=("pmml-bpmn-getting-started" "sklearn-getting-started" "synthetic-data-getting-started")
select opt in "${options[@]}"
do
    case $opt in
        "pmml-bpmn-getting-started")
            echo "you chose choice $REPLY which is $opt"
            break
            ;;
        "sklearn-getting-started")
            echo "you chose choice $REPLY which is $opt"
            break
            ;;
        "synthetic-data-getting-started")
            echo "you chose choice $REPLY which is $opt"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

git init
git config core.sparsecheckout true
git remote add -f origin https://github.com/AI4BP/ainotes.git
echo "$opt/" >> .git/info/sparse-checkout
echo ".gitignore" >> .git/info/sparse-checkout
echo "init.sh" >> .git/info/sparse-checkout
git pull origin main
cp ./$opt/init/Dockerfile ./
cp ./$opt/init/requirements.txt ./