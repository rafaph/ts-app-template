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

.PHONY: test
test:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run test || $(MAKE) down
	$(MAKE) down

.PHONY: test-watch
test-watch:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run test:watch || $(MAKE) down
	$(MAKE) down

.PHONY: test-cov
test-cov:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run test:cov || $(MAKE) down
	$(MAKE) down

.PHONY: lint
lint:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run lint || $(MAKE) down
	$(MAKE) down

.PHONY: lint-fix
lint-fix:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run lint:fix || $(MAKE) down
	$(MAKE) down

.PHONY: build
build:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run build || $(MAKE) down
	$(MAKE) down

.PHONY: build-watch
build-watch:
	UID=$(UID) GID=$(GID) docker-compose run --service-ports --rm server npm run build:watch || $(MAKE) down
	$(MAKE) down
