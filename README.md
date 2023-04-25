# az-useful-commands

See [here](https://github.com/dnitsch/dnitsch/tree/main/docs/cheatsheet).

From inside folder:
```
docker run -it --rm -e AZURE_CONFIG_DIR=/root/.azaks/azdir -v ${PWD}:/root/.azaks/azdir mcr.microsoft.com/azure-cli /bin/sh
```

## Examples:

```
az cosmosdb list-connection-strings --name awe-xxxx --resource-group xxxx

az cosmosdb keys list --name xxxx --resource-group xxxx

```
