#! /bin/bash
docker_username=$1
set -xe

# curl -sL https://kind.sigs.k8s.io/dl/v0.9.0/kind-linux-amd64 -o /usr/local/bin/kind
# chmod 755 /usr/local/bin//kind

# curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.17.4/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
# chmod 755 /usr/local/bin//kubectl

# curl -LO https://get.helm.sh/helm-v3.1.2-linux-amd64.tar.gz
# tar -xzf helm-v3.1.2-linux-amd64.tar.gz
# mv linux-amd64/helm /usr/local/bin/
# rm -rf helm-v3.1.2-linux-amd64.tar.gz

kind version
kubectl version --client=true
helm version

kind create cluster --wait 10m --config kind-config.yaml

kubectl get nodes
