# service-mesh

Install Service Mesh on OpenShift
https://docs.openshift.com/container-platform/4.10/service_mesh/v2x/installing-ossm.html#installing-ossm

Differences with istio
https://docs.openshift.com/container-platform/4.10/service_mesh/v2x/ossm-vs-community.html

Travel demo tutorial : 
https://kiali.io/docs/tutorials/travels/

Prereq

Install Operators:
Kiali
Open distributed tracing
Service Mesh
Prometheus (optional)
Note

Steps:

1. 101_install-travel-agency.sh: creates the applications namespaces from source. creates istio-system, the control plane and the members of ServiceMeshMemberRolls
2. 102_enable-sidecars.sh: foreach project (travel-portal, travel-agency, travel-control) enables the sidecar injections... wait some minutes and all the pods will have a sidecar
3. 103_expose-travel-control.sh: creates the routing to expose the travel agency application. get the route to expose running oc get route -n istio-system and uptade the files in crds/travel-agency
4. 104_request-routing.sh : creates a simple request routing https://kiali.io/docs/tutorials/travels/05-connect/#request-routing
5. 105_traffic-shifting.sh : creates a traffic shift. https://kiali.io/docs/tutorials/travels/05-connect/#traffic-shifting
6. 106_fault-injection.sh : creates a faulti injection on a service, could be done from graphical interface https://kiali.io/docs/tutorials/travels/05-connect/#fault-injection
7. 107_timeouts-and-faults.sh: and timeout, fault injection and see the consequences in the system https://kiali.io/docs/tutorials/travels/05-connect/#fault-injection
8. 108_mirroring.traffic.sh: mirros some traffic to one of the 3 services 
9. 109_circuit-breakers.sh: covers circuit breakers scenario described in : https://kiali.io/docs/tutorials/travels/05-connect/#circuit-breaking
10. 110_enable-security.sh: covers servica account security : https://kiali.io/docs/tutorials/travels/06-secure/
11. 111_deny-get-policy.sh: deny all get calls 



