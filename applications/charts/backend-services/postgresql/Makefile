.PHONY: template

template:
	helm template --debug -f values.yaml postgres .

container:
	docker build -t crazytje/cnpg-vchord:17 .

push: container
	docker push crazytje/cnpg-vchord:17