FROM alpine
RUN apk update && apk --no-cache add \
    curl \
    git && \
    curl -sSL https://raw.githubusercontent.com/tmrts/boilr/master/install | sh
ENV PATH /root/bin:${PATH}
RUN boilr init

ENTRYPOINT ["boilr"]
