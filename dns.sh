#!/usr/bin/env bash
# external-dns-test.gcp.joshlong.wtf.	
gcloud dns record-sets transaction start --zone "external-dns-test-gcp-zalan-do"
gcloud dns record-sets transaction add ns-cloud-a{1..4}.googledomains.com. \
--name "external-dns-test.gcp.joshlong.wtf." --ttl 300 --type NS --zone "external-dns-test-gcp-zalan-do"
gcloud dns record-sets transaction execute --zone "external-dns-test-gcp-zalan-do"