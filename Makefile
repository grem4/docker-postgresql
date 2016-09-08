all: build

build:
	@docker build --tag=grem4/postgresql .

release: build
	@docker build --tag=grem4/postgresql:$(shell cat VERSION) .
