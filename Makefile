COMPOSE_LOCAL_FILE ?= local.yml
COMPOSE_PROD_FILE = production.yml

dev:
	docker compose -f ${COMPOSE_LOCAL_FILE} up postgres -d

prod:
	docker compose -f ${COMPOSE_PROD_FILE} up django postgres -d

stop:
	docker compose -f ${COMPOSE_LOCAL_FILE} down

prod_stop:
	docker compose -f ${COMPOSE_PROD_FILE} down
