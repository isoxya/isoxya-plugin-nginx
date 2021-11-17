#===============================================================================
# FROMFREEZE docker.io/library/nginx:latest
FROM docker.io/library/nginx@sha256:aec5a3feecd3141e86314888166790f6557e42d1c9bf9227d8275a2936190152
#-------------------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    rm -rf /var/lib/apt/lists/*
#-------------------------------------------------------------------------------
COPY src/ /etc/nginx/
#-------------------------------------------------------------------------------
HEALTHCHECK CMD curl -fs localhost:80 || false
#===============================================================================
