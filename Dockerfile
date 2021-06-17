FROM golang

RUN go get -v github.com/yudai/gotty

ENTRYPOINT [ "gotty" ]
