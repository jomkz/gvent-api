.PHONY: build clean image run

build:
	mkdir -p ./build
	GOARCH=amd64 GOOS=linux go build -o ./build/rechat github.com/jmckind/gvent-api/cmd

clean:
	rm -fr ./build

image:
	docker build -t jmckind/gvent-api:latest .

run:
	LOG_LEVEL=debug go run github.com/jmckind/gvent-api/cmd