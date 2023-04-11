FROM docker
RUN apk update && apk add git && apk add bash
WORKDIR /mydir
COPY ./builder.sh .
RUN chmod +x ./builder.sh
ENTRYPOINT ["./builder.sh"]
