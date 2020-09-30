#===============================================================================
# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:d81f010955749350ef31a119fb94b180fde8b2f157da351ff5667ae037968b28
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY [ \
    "src/", \
    "/etc/nginx/"]
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
#===============================================================================
