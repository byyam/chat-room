FROM golang:latest AS builder
RUN go version
MAINTAINER Yam <yanzhang.scut@gmail.com>

COPY . /go/src/github.com/byyam/chat-room/
WORKDIR /go/src/github.com/byyam/chat-room/
RUN make os=linux chat-server

FROM scratch
WORKDIR /root/
COPY --from=builder /go/src/github.com/byyam/chat-room/bin/ ./bin

EXPOSE 6060
ENTRYPOINT ["./bin/chat-server"]
