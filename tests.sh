kubectl run hi --quiet --rm --attach --restart=Never --image=alpine  -- sh -c 'sleep 3; echo "Hello from Kubernetes!"'

kubectl get pods
kubectl get deployment


kubectl run my-nginx --image=nginx --replicas=2 --port=80
kubectl expose deployment my-nginx --port=80 --type=LoadBalancer
kubectl get services

kubectl delete deployment my-nginx


kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl apply -f https://gist.github.com/guilhem/2ce54da344eee8f12ef06e85f6c90e69/raw/4e7456ffef8c781b2a8f7b20257457af20b76a27/dashboard-insecure-rbac.yml
```
kind: ClusterRoleBinding
apiVersion: rbac.authorization.k8s.io/v1beta1
metadata:
  name: dashboard-admin
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: default
  namespace: kube-system
```
