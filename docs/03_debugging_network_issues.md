# Network Issues

Run the following pod in the namespace you wish to debug in:

```console
kubectl run nwtool --rm --tty -i --restart='Never' --namespace operations --image wbitt/network-multitool --command bash
```