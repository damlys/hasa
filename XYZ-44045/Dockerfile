FROM golang:1-bookworm AS builder

COPY ./vendor /vendor
RUN cd /vendor/github.com/GoogleContainerTools/container-structure-test-1.21.1 && make


FROM scratch

COPY --from=builder \
  /vendor/github.com/GoogleContainerTools/container-structure-test-1.21.1/out/container-structure-test \
  /container-structure-test

ENTRYPOINT ["/container-structure-test"]
CMD ["version"]
