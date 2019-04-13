FROM alpine:3.5

COPY backup.sh /

RUN chmod u+x backup.sh

CMD ["backup.sh -b /a /b"]