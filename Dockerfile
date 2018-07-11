FROM python:3.4-alpine3.7

RUN apk add --update gcc libev libev-dev musl-dev jq bash && \
    pip install boom

#COPY run.sh /

ENTRYPOINT ["boom"]
#ENTRYPOINT ["bash", "/run.sh"]
