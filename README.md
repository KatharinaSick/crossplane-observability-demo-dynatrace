# Crossplane Observability Demo Dynatrace

This repository contains Helm charts with Dynatrace configuration for
the [crossplane-observability-demo](https://github.com/vfarcic/crossplane-observability-demo).

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```shell
helm repo add crossplane-observability-demo-dynatrace https://katharinasick.github.io/crossplane-observability-demo-dynatrace
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages. You
can then run `helm search repo crossplane-observability-demo-dynatrace` to see all available charts.

To install e.g. the `kubernetes-workload` chart:

```shell
helm install dynatrace-kubernetes-workload crossplane-observability-demo-dynatrace/kubernetes-workload
```

To uninstall the chart:

```shell
helm delete dynatrace-kubernetes-workload
```
