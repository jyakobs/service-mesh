
#!/bin/bash

oc apply -f crds/travel-agency/108_destination-rule.yaml
oc apply -f crds/travel-agency/108_virtual_service.yaml