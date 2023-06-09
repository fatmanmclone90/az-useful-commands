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
kubectl get configMaps -n <namespace>
```

## Helm Examples
```
helm uninstall $(helm list --short -n  namespace) -n namespace
helm uninstall $(helm list --short --filter -listener$  -n namespace) -n namespace
helm ls -n namespace
```

# TCP Dump from Pods

Requires permissions to be able to exec into pods in cluster.

```
namespace="<namespace>"
kubectl get pods -n $namespace | grep <some selector>
podId = "<some id>"
kubectl exec -i $podId -n $namespace -- /bin/sh
apk --no-cache --update add tcpdump
tcpdump -s 0 -vvv -w capture.cap
```

After test finish:

```
kubectl cp --retries=1 $namespace/$listener:capture.cap some-capture.cap
```
