.PHONY: template

template:
	helm template --debug -f values.yaml postgres .

container:
	docker build -t crazytje/cnpg-vchord:17-1 .

push: container
	docker push crazytje/cnpg-vchord:17-1

connect:
	psql -h 192.168.5.5 -U postgres -p 30000

create-db-with-user:
	psql -h 192.168.5.5 -U postgres -p 30000 -c "CREATE ROLE ${DBNAME} WITH LOGIN PASSWORD '${PASSWORD}'"
	psql -h 192.168.5.5 -U postgres -p 30000 -c "CREATE DATABASE ${DBNAME} OWNER ${DBNAME};"	