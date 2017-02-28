all: build

build:
	@docker build --tag=veritech/postgresql .

release: build
	@docker build --tag=veritech/postgresql:$(shell cat VERSION) .
