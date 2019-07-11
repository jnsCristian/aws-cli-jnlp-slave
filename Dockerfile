FROM jenkins/jnlp-slave:alpine

ENV AWS_CLI_VERSION 1.16.140

USER root
RUN apk add --no-cache \
    ca-certificates \
    curl \
    openssl \
    openssl-dev \
    g++ \
    python3 \
    python3-dev \
    build-base \
    libffi \
    libffi-dev 
	
RUN pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} 