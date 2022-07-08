#!/bin/bash
oc adm policy add-scc-to-group anyuid system:serviceaccounts:istio-system
