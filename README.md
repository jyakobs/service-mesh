# service-mesh

Install Service Mesh on OpenShift
https://docs.openshift.com/container-platform/4.10/service_mesh/v2x/installing-ossm.html#installing-ossm

Differences with istio
https://docs.openshift.com/container-platform/4.10/service_mesh/v2x/ossm-vs-community.html

Travel demo tutorial : 
https://kiali.io/docs/tutorials/travels/

Note
oc label namespace travel-agency istio-injection=enabled
oc label namespace travel-portal istio-injection=enabled
Non abilita l'auto injection... cioè lo fa a livello di namespace ma non a livello di deployment

