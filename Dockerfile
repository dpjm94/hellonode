# use a node base image
FROM tomcat:latest

# set maintainer
LABEL maintainer "dpjm94@live.ie"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:32769 || exit 1

# tell docker what port to expose
EXPOSE 32769
