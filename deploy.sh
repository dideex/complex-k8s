docker build -t dideex/complex-client -f ./client/Dockerfile ./client
docker build -t dideex/complex-server -f ./server/Dockerfile ./server
docker build -t dideex/complex-worker -f ./worker/Dockerfile ./worker
docker push dideex/complex-client
docker push dideex/complex-server
docker push dideex/complex-worker
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=dideex/complex-server