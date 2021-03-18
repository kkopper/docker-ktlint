FROM openjdk:11-jre-slim

RUN apt-get -qq update --yes \
 && apt-get -qq install --yes --no-install-recommends \
    curl \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Download ktlint
ARG ktlint_version=0.41.0
RUN curl -sSLO https://github.com/pinterest/ktlint/releases/download/${ktlint_version}/ktlint \
 && chmod a+x ktlint \
 && mv ktlint /usr/local/bin
