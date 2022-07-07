#!/bin/bash

oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/mysql-v2.yaml) -n travel-agency
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/mysql-v3.yaml) -n travel-agency