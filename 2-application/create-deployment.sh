#!/usr/bin/env bash

set -x

kubectl create deployment kiada --image=genedocker/kiada:0.1
