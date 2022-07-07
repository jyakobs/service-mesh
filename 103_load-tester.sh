#!/bin/bash

oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_loadtester.yaml) -n travel-portal