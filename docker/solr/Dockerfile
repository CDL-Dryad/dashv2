FROM solr:5.5

RUN curl -L https://github.com/geoblacklight/geoblacklight-schema/archive/v0.3.2.tar.gz | tar xvz --directory /tmp \
  && /opt/docker-solr/scripts/precreate-core geoblacklight /tmp/geoblacklight-schema-0.3.2/conf \
  && rm -r /tmp/geoblacklight-schema-0.3.2
