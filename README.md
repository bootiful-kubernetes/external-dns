# External DNS 
How to setup external DNS on GKE [following along this tutorial](https://github.com/kubernetes-sigs/external-dns/blob/master/docs/tutorials/gke.md)

Basically, you'll need to configure a GKE cluster with some permissions, and you'll need to link your Google Cloud DNS with the DNS in your DNS registrar. 

This stuff is easy and is done, really, only occasionally - when you want to map new DNS entries to new clusters and so on. 

Once that's done, you need only ensure the `externaldns.yaml` is applied (once). 

After that, every application you deploy will need an annotation describing the DNS you want for that application. Deploy it and then wait a little while. Say 5 minutes. And it should actually work. See this `nginx.yaml` configuration for an example of how to annotate a `service` correctly.

```yaml
....
  
apiVersion: v1
kind: Service
metadata:
  name: nginx
  annotations:
    external-dns.alpha.kubernetes.io/hostname: nginx2.demo.mykubernetes.cloud.

....
```
