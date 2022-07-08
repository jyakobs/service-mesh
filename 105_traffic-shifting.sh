#!/bin/bash
oc apply -f crds/travel-agency/105_destination-rule.yaml
oc apply -f crds/travel-agency/105_virtual_service.yaml