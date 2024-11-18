FROM mouday/domain-admin:latest

WORKDIR /app

RUN apk update && \
    apk add --no-cache wget bash
    
COPY main.sh .

RUN chmod a+x main.sh

ENTRYPOINT ["/bin/bash", "-c", "bash /app/main.sh"]
