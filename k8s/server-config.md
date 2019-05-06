# combined configs
apiVersion: v1
kind: Service
metadata:
  name: server-cluster-ip-service
spec:
  type: ClusterIP
  selector:
    component: server
  ports:
    - port: 5000
      targetPort: 5000
---
apiVersion: v1
kind: Service
metadata:
  name: clinet-cluster-ip-service
spec:
  type: ClusterIP
  selector:
    component: web
  ports:
    - port: 3000
      targetPort: 3000


# Commands

kubectl delete service postgres-cluster-ip-service
  _delete entity_

kubectl apply -f k8s
  _add all yaml to the k8s_

kubectl get [pods|services|deployments]
  _get information about the kind_

kubectl describe [pods|services|deployments]
  _get additional information about the kind_

kubectl create secret generic pgpassword --from-literal PGPASSWORD=postgres
  _add secrets env_

kubectl set image deployment/client-deployment client=dideex/complex-client:title
  _update existing pod from hub with new version_