#!/bin/bash

set -e

new_ver=$1

echo "new version: $new_ver"

docker tag nginx:1.23.3 hyurii3/nginx:$new_ver
docker push hyurii3/nginx:$new_ver

tmp_dir=$(mktemp -d)
echo "tmp dir: $tmp_dir"

git clone https://github.com/hyurii/argocd_gitops.git $tmp_dir

sed -i '' -e "s/hyurii3\/nginx:.*/hyurii3\/nginx:$new_ver/g" $tmp_dir/app/1-deployment.yaml

cd $tmp_dir
git add .
git commit -m "upgrade to $new_ver"
git push

rm -rf $tmp_dir