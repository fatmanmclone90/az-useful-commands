# az-useful-commands

See [here](https://github.com/dnitsch/dnitsch/tree/main/docs/cheatsheet).

From inside folder:
```
docker run -it --rm -e AZURE_CONFIG_DIR=/root/.azaks/azdir -v ${PWD}:/root/.azaks/azdir mcr.microsoft.com/azure-cli /bin/sh
```

Use `%cd%` if using CMD.

## Examples ##

```
az cosmosdb list-connection-strings --name awe-xxxx --resource-group xxxx

az cosmosdb keys list --name xxxx --resource-group xxxx

az pipelines list --organization https://dev.azure.com/next-WHDS --project WHDS-DFT-Integration --output table > pipelines.txt

```

# AKS #

From inside folder:
```
docker run -it --rm -v %cd%:/root/.azaks -e KUBECONFIG=/root/.azaks/config alpin
e/k8s:1.26.3 /bin/sh
```

## Kubectl Examples ##
```
kubectl config get-contexts                      
kubectl config current-context                       
kubectl config use-context my-cluster-name  
kubectl get deployments -n namespace
kubectl delete --all deployments -n namespace
kubectl delete deployment <name> -n <namespace>
```

## Helm Examples
```
helm uninstall $(helm list --short -n  namespace) -n namespace
```
