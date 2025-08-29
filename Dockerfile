FROM alpine:3.22

RUN apk add --no-cache jq curl

# defaults
ENV CHECK_INTERVAL=10
ENV ERROR_DELAY=5

COPY unsealer.sh /usr/local/bin/unsealer.sh

RUN chmod +x /usr/local/bin/unsealer.sh

ENTRYPOINT ["/usr/local/bin/unsealer.sh"]
