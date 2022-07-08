#!/bin/bash
oc apply -f <(curl -L https://raw.githubusercontent.com/kiali/demos/master/travels/travel_loadtester.yaml) -n travel-portal


if ($1 = true)
then
    oc apply -f crds/travel-agency/109_destination-rule.yaml
    oc apply -f crds/travel-agency/109_virtual_service.yaml
fi
