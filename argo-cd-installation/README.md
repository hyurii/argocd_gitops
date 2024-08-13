## Installation ArgoCD
# terraform init
# terraform apply
#
# helm list -A
#
# kubectl get pods -n argocd
#
# k get secrets -n argocd
# k get secrets argocd-initial-admin-secret -o yaml -n argocd
# echo "<password_here>" | base64 -d
# copy without % sign
#
# k port-forward svc/argocd-server -n argocd 8080:80
# localhost:8080
# admin::password
#
# docker login --username <user>
# docker pull nginx:1.23.3
# docker images
# docker tag nginx:1.23.3 hyurii3/nginx:v0.1.0
# docker images
# docker push hyurii3/nginx:v0.1.0