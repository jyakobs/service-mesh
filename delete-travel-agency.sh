#!/bin/bash

#Delete 
oc delete namespace travel-agency
oc delete namespace travel-portal
oc delete namespace travel-control

oc delete namespace istio-system-travel-agency