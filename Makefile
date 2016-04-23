NAME=sysinfonode
VERSION=$(shell cat VERSION)

build:
	mkdir -p build
	docker build -t $(NAME):$(VERSION) .
	docker save $(NAME):$(VERSION) | gzip -9 > build/$(NAME)_$(VERSION).tgz

run:
	docker run -d -p 80:80 testnode
