#!/bin/bash
#
#Install OCP SSM operator;
#Install SSM control plane and data plane;
#Deploy Kiali travel demo (https://kiali.io/docs/tutorials/travels/)
#Verify Istio policies (TBD but few, 2 or 3);
#Show metric through Kiali and Jaeger;
#Slide to explain the architecture, scope and capabilities (in particular multi cluster features and differences between OCP SSM and Istio community)




oc create namespace travel-agency
oc create namespace travel-portal
oc create namespace travel-control

oc create namespace istio-system-travel-agency

oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_agency.yaml) -n travel-agency
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_portal.yaml) -n travel-portal
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_control.yaml) -n travel-control


#create istio control plane

oc apply -f crds/control-plane.yaml
oc apply -f crds/members.yaml


./enable-sidecars.sh travel-control

