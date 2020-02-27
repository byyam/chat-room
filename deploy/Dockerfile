FROM golang:latest AS builder
MAINTAINER Yam <yanzhang.scut@gmail.com>
ARG APP_NAME
ARG HOME_PAGE=home.html

RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN make os=linux chat-server
COPY --from=builder /app/bin/$APP_NAME ./$APP_NAME
COPY --from=builder /app/web/$HOME_PAGE ./$HOME_PAGE
COPY --from=builder /app/deploy/entrypoint.sh ./entrypoint.sh
EXPOSE 6060

CMD ["bash", "-c", "sleep 2 && bash ./entrypoint.sh"]

