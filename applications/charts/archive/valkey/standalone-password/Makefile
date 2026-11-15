.PHONY: dependency-update template lint

dependency-update:
	helm dependency update .

template: dependency-update
	helm template valkey-standalone . --namespace services --values values.yaml

lint: dependency-update
	helm lint . --values values.yaml
