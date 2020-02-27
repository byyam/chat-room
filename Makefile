GOOS=darwin
ifeq ($(os),linux)
	GOOS=linux
endif

all: chat-server

lite: chat-server

chat-server:
	CGO_ENABLED=0 GOOS=${GOOS} GOARCH=amd64 go build -mod=vendor -o bin/chat-server ./service/chat-server

clean:
	rm -f ./bin/*
