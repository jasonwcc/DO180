#!/bin/bash
oc login -u kubeadmin -p $(cat ~/.kubeadmin) --insecure-skip-tls-verify=true https://cluster-api.lab.example.com:6443
oc new-project review
sh ~/DO180/review/lab/openshift/setpolicy.sh
sh ~/DO180/review/lab/openshift/create-pv.sh
oc process -f ~/DO180/review/lab/openshift/resources/nexus-template.json | oc create -f -
oc get pods -w
