FROM elasticsearch:8.2.0
LABEL org.opencontainers.image.source = "https://github.com/ftmnl/aleph-elasticsearch"

RUN bin/elasticsearch-plugin install --batch analysis-icu

COPY --chown=elasticsearch synonames.txt /usr/share/elasticsearch/config/
