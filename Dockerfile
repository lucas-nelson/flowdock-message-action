FROM alpine:latest

LABEL "com.github.actions.name"="Flowdock Message"
LABEL "com.github.actions.description"="Post a Flowdock message when a user does a thing to a PR"

RUN apk add --no-cache bash ca-certificates curl jq

COPY flowdock-message-action .

ENTRYPOINT ["./flowdock-message-action"]
