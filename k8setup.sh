#!/bin/bash 


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl 
mv ./kubectl /usr/bin/
kubectl completion bash > ~/.kube/completion.bash.inc

echo "source ~/.kube/completion.bash.inc" >> ~/.bash_profile
