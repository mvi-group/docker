#!/bin/bash
source tags.env
docker build \
-t "${REGISTRY}${NAMESPACE}odoo-ee:${MAYOR}.${MINOR}-${BUILD}" \
-t "${REGISTRY}${NAMESPACE}odoo-ee:${MAYOR}.${MINOR}" \
-t "${REGISTRY}${NAMESPACE}odoo-ee:${MAYOR}" .
