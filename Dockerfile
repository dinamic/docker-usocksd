FROM golang:alpine

RUN go get -u github.com/cybozu-go/usocksd/...
COPY usocksd.toml /root/usocksd.toml

WORKDIR /root
CMD ["usocksd", "-f", "/root/usocksd.toml"]
