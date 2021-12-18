#!/bin/bash

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

install minikube-linux-amd64 /usr/bin/minikube

/bin/rm -f minikube-linux-amd64

minikube completion bash > ~/.minikube/files/completion

echo "source ~/.minikube/files/completion" > ~/.bash_profile
