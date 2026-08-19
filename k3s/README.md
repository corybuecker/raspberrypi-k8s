1. Install open-iscsi
2. Setup Traefik in `/var/lib/rancher/k3s/server/manifests/k3s-traefik-config.yaml`

```yaml
---
apiVersion: helm.cattle.io/v1
kind: HelmChartConfig
metadata:
  name: traefik
  namespace: kube-system
spec:
  valuesContent: |-
    providers:
      kubernetesGateway:
        enabled: true
      kubernetesIngress:
        enabled: false
    gateway:
      listeners:
        web:
          port: 8000
          protocol: HTTP
          namespacePolicy:
            from: All
```
