#!/bin/bash

oc apply -f crds/travel-agency/104_destination-rule.yaml
oc apply -f crds/travel-agency/104_virtual_service.yaml