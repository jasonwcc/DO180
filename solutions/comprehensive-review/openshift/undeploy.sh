#!/bin/bash
oc login -u kubeadmin -p $(cat ~/.kubeadmin) --insecure-skip-tls-verify=true https://cluster-api.lab.example.com:6443
oc project review
oc delete all -l app=nexus
oc delete pvc nexus
sh ~/DO180/review/lab/openshift/delete-pv.sh
oc delete project review
