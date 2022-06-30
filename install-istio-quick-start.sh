#!/bin/bash
#
#Install OCP SSM operator;
#Install SSM control plane and data plane;
#Deploy Kiali travel demo (https://kiali.io/docs/tutorials/travels/)
#Verify Istio policies (TBD but few, 2 or 3);
#Show metric through Kiali and Jaeger;
#Slide to explain the architecture, scope and capabilities (in particular multi cluster features and differences between OCP SSM and Istio community)



#create istio control plane
oc project $1

oc patch ServiceMeshMemberRoll default -p '{"spec":{"members":"- quick-start-test"}}'


./enable-sidecars.sh quick-start-test

