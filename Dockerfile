## -*- dockerfile-image-name: "gotty" -*-
FROM golang:1

ARG INSTALL_PACKAGES="openssh-client"
ARG GOTTY_VERSION

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get install -y \
    ${INSTALL_PACKAGES}\
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

RUN go install -v github.com/sorenisanerd/gotty@${GOTTY_VERSION:-latest}

ENTRYPOINT [ "gotty" ]
