FROM java:7-jre-alpine

RUN apk --no-cache add curl unzip

RUN curl -o crowdin-cli.zip -SL https://downloads.crowdin.com/cli/v2/crowdin-cli.zip  && \
    unzip -j crowdin-cli.zip   && \
    cp crowdin-cli.jar /usr/local/bin   && \
    rm *.*

COPY entrypoint/crowdin.sh /usr/local/bin/crowdin

ENTRYPOINT [ "crowdin" ]
