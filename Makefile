GOOS=darwin
ifeq ($(os),linux)
	GOOS=linux
endif

all: chat-server

lite: chat-server

chat-server:
	GOOS=${GOOS} go build -mod=vendor -o bin/chat-server ./service/chat-server

clean:
	rm -f ./bin/*
