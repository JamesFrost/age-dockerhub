FROM alpine:3.13

ARG VERSION

RUN wget "https://github.com/FiloSottile/age/releases/download/${VERSION}/age-${VERSION}-linux-amd64.tar.gz" -O /tmp/age.tar.gz && \
    mkdir -p /tmp/age && \
    tar xvzf /tmp/age.tar.gz --strip-components=1 -C /tmp/age && \
    mv /tmp/age/age /usr/local/bin/ && \
    mv /tmp/age/age-keygen /usr/local/bin/ && \
    rm -rf /tmp/age && \
    rm /tmp/age.tar.gz

CMD ["age"]
