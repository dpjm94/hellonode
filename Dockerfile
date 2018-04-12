# use a node base image
FROM hello-world

# set maintainer
LABEL maintainer "dpjm94@live.ie"

run mkdir -p /workspace

WORKDIR /workspace

COPY hello-node-app/*/ workspace/

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8080 || exit 1

# tell docker what port to expose
EXPOSE 8080

CMD npm start
