# Valkey umbrella charts

This directory contains two independent umbrella charts. Both are intended to
be installed in the `services` namespace and can run at the same time:

- `standalone`: the official `valkey` chart, with one persistent Valkey
  instance exposed by the `valkey-standalone` ClusterIP Service. The pinned
  release also supports primary/replica replication.
- `cluster`: the official `valkey-operator` and `valkey-resources` charts,
  creating a three-shard `ValkeyCluster` named `valkey-cluster`.

The charts use different resource names and PVCs, so they do not share data or
Services. The cluster chart installs the Valkey operator and its CRDs as part
of the release. Sentinel is separate from Valkey Cluster mode and is present on
the upstream `main` branch, but is not included in the pinned `valkey-0.12.0`
dependency yet. Once a release containing Sentinel is published, the standalone
umbrella can enable it without changing the resource naming scheme.

Install them independently:

```sh
helm upgrade --install valkey-standalone ./standalone \
  --namespace services --create-namespace

helm upgrade --install valkey-cluster ./cluster \
  --namespace services --create-namespace
```

The dependency archives and `Chart.lock` files are checked in so the charts can
also be rendered or installed without rebuilding dependencies first.
