helm repo add harbor https://helm.goharbor.io
helm repo update

# Harbor 설치
helm install harbor harbor/harbor \
  --namespace harbor-system \
  --values ./values.yaml \
  --wait --timeout=10m


kubectl get pods -n harbor-system