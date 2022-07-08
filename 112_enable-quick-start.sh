#!/bin/bash
#Enable sidecars in all projects

#oc label namespace travel-agency istio-injection=enabled
#oc label namespace travel-portal istio-injection=enabled
#oc label namespace travel-control istio-injection=enabled

#oc rollout restart deploy -n travel-portal
#oc rollout restart deploy -n travel-agency
#oc rollout restart deploy -n travel-control

oc project $1
for dp in `oc get deployment -o name`; do
    echo "deployment: $dp"
    oc patch $dp -p '{"spec": {"template":{"metadata":{"annotations":{"sidecar.istio.io/inject":"true"}}}} }'
    oc patch $dp -p '{"spec":{"template":{"metadata":{"labels":{"maistra.io/expose-route":"true"}}}}}'
done


oc rollout restart deploy -n $1

oc expose service quick-start-service

oc apply -f crds/quick-start/112_destination-rule-quick-start.yaml
oc apply -f crds/quick-start/112_gateway-quick-start.yaml
oc apply -f crds/quick-start/112_virtual-service-quick-start.yaml