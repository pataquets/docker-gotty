FROM golang:1

RUN go get -v github.com/yudai/gotty

ENTRYPOINT [ "gotty" ]
