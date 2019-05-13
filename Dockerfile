FROM alpine:3.9.3

COPY node_exporter  /bin/node_exporter
COPY conf           /etc/node-exporter

ENV NODE_ID=none

EXPOSE     9100
USER       root
ENTRYPOINT [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]