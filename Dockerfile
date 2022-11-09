FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.7
LABEL version="7.17.7"
LABEL release="elasticsearch-plugins"
LABEL maintainer="marcinbojko"
# add plugins
RUN bin/elasticsearch-plugin install --batch repository-gcs \
  && bin/elasticsearch-plugin install --batch repository-s3 \
  && bin/elasticsearch-plugin install --batch repository-azure \
  && bin/elasticsearch-plugin install --batch store-smb \
  && bin/elasticsearch-plugin install --batch mapper-size
