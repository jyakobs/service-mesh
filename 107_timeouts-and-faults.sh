
#!/bin/bash
#reproduce fault injection
oc apply -f crds/travel-agency/106_destination-rule.yaml
oc apply -f crds/travel-agency/106_virtual_service.yaml

#timeouts on travles

oc apply -f crds/travel-agency/107_destination-rule.yaml
oc apply -f crds/travel-agency/107_virtual_service.yaml