SHELL=/bin/bash
UID=`id -u`
GID=`id -g`

.PHONY: down
down:
	docker-compose down --remove-orphans

.PHONY: up
up:
	UID=$(UID) GID=$(GID) docker-compose up --build || $(MAKE) down

.PHONY: shell
shell:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server sh || $(MAKE) down
	$(MAKE) down

