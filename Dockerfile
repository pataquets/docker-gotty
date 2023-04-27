FROM golang:1

ARG GOTTY_VERSION

RUN go install -v github.com/sorenisanerd/gotty@${GOTTY_VERSION:-latest}

ENTRYPOINT [ "gotty" ]
