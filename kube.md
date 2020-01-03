Create the deployment
```powershell
kubectl apply -f gcbot-deployment.yaml
```

Update a deployment
```powershell
kubectl set image deployment/gcbot-deployment gcbot=docker.pkg.github.com/sytone/godless-coliseum-discord-bot/godless-coliseum-discord-bot:master --record
```


Create and manage secrets used in the deployment
```powershell
kubectl create secret docker-registry regcred --docker-server=docker.pkg.github.com --docker-username=... --docker-password=... --docker-email=...

kubectl create secret generic gc-discord --from-literal=discord-token=...
```

