#!/usr/bin/env bash

ROOT_DOMAIN=mykubernetes.cloud
ROOT_SUB_DOMAIN=demo.${ROOT_DOMAIN}
ZONE_NAME=demo-mykubernetes-cloud
# gcloud dns managed-zones create "${ZONE_NAME}" \
#     --dns-name "${ROOT_SUB_DOMAIN}." \
#     --description "Automatically managed zone by kubernetes.io/external-dns"


# echo "NOTE the following NS entries and change the succeeding command accordingly "
# gcloud dns record-sets list \
#     --zone "${ZONE_NAME}" \
#     --name "${ROOT_SUB_DOMAIN}." \
#     --type NS



# gcloud dns record-sets transaction start --zone "${ZONE_NAME}"
# gcloud dns record-sets transaction add ns-cloud-e{1..4}.googledomains.com. \
# --name "${ROOT_SUB_DOMAIN}." --ttl 300 --type NS  --zone "${ZONE_NAME}"
# gcloud dns record-sets transaction execute  --zone "${ZONE_NAME}"


