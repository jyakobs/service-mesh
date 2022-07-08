#!/bin/bash

oc apply -f crds/travel-agency/103_destination-rule-travel-control.yaml
oc apply -f crds/travel-agency/103_gateway-control.yaml
oc apply -f crds/travel-agency/103_virtual-service.yaml