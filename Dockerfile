FROM alpine
ARG TARGETARCH

COPY ./bin/${TARGETARCH}/file-server /file-server

CMD ["/file-server"]