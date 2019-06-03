#===============================================================================
FROM nginx
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
