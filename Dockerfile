FROM ubuntu:22.04
ENV GRAFANA_VERSION 9.1.0
RUN apt-get update && apt-get install -y wget unzip
RUN wget https://dl.grafana.com/oss/release/grafana-${GRAFANA_VERSION}.linux-amd64.tar.gz -O /tmp/grafana.tar.gz && \
  cd /tmp && \
  tar xzvf grafana.tar.gz && \
  mv grafana-${GRAFANA_VERSION} /grafana
WORKDIR /grafana
