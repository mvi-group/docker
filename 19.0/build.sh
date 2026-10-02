#!/bin/bash
source tags.env
docker build \
-t "${REGISTRY}${NAMESPACE}odoo-ce:${MAYOR}.${MINOR}-${BUILD}" \
-t "${REGISTRY}${NAMESPACE}odoo-ce:${MAYOR}.${MINOR}" \
-t "${REGISTRY}${NAMESPACE}odoo-ce:${MAYOR}" \
-t "odoo-ce:${MAYOR}.${MINOR}-local" . 
