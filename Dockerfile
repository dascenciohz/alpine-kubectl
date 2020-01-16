FROM alpine:3.10

ENV KUBECTL_VERSION="v1.17.0"

RUN apk update \
    && apk add curl ca-certificates --no-cache

ADD https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN chmod +x /usr/local/bin/kubectl
