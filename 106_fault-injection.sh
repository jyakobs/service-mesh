
#!/bin/bash

oc apply -f crds/travel-agency/106_destination-rule.yaml
oc apply -f crds/travel-agency/106_virtual_service.yaml