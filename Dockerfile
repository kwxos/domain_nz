FROM python:3.7.15-alpine3.16

WORKDIR /app

RUN apk update && \
    apk add --no-cache wget bash
    
COPY main.sh .

RUN chmod a+x main.sh

ENTRYPOINT ["/bin/bash", "-c", "bash /app/main"]
