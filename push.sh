#!/bin/bash

echo "push start..."
workspace_dir=/Users/biguodong/Documents/workspace/management/
PUSH_TIME=`date +%Y-%m-%d`
git_url=https://github.com/JellyB/Schedule.git
project_name=Schedule
git_branch=master

PROJECT_HOME=${workspace_dir}${project_name}

cd ${PROJECT_HOME}
echo ${PUSH_TIME}

git pull origin ${git_branch}
git add .
git commit -m "${PUSH_TIME}"
git push origin ${git_branch}

echo "push remote master success"
echo "==============================================================="
exit 0