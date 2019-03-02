# WIP: this is just an alternate to docker-compose I'm using to experiment
# not working yet

.PHONY: build
build:
	docker build . -t i-add-data
	docker build . -t i-lite

.PHONY: clean
clean:
	docker-compose down -v
	docker image rm i-add-data i-lite

# todo: make sure this works the same as docker-compose up before relying on
.PHONY: run
run:
	docker start -v "data-volume:/config" lite

# ==== these tools should work ===

.PHONY: lorem
lorem:
	docker-compose up -d
	docker exec -it lite cat /config/config.conf

.PHONY: loop-all
loop-all: lorem clean
