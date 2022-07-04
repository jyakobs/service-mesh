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

oc create namespace istio-system

oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_agency.yaml) -n travel-agency
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_portal.yaml) -n travel-portal
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_control.yaml) -n travel-control


#also install new versions of the services
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travels-v2.yaml) -n travel-agency
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travels-v3.yaml) -n travel-agency

#create istio control plane

oc apply -f crds/travel-agency/control-plane.yaml
oc apply -f crds/travel-agency/members.yaml

sleep 30


./enable-sidecars.sh travel-control

./enable-sidecars.sh travel-agency

./enable-sidecars.sh travel-portal
