FROM goreleaser/goreleaser:latest as builder

WORKDIR /build
ADD . /build

RUN goreleaser build --single-target

FROM alpine:3.15.3
LABEL org.opencontainers.image.source=https://github.com/cirruslabs/cirrus-cli/

COPY --from=builder /build/dist/cirrus_linux_amd64/cirrus /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/cirrus"]
