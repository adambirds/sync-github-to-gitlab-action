FROM ubuntu:latest

RUN apt update && apt upgrade && \
    apt install -y \
    openssh-client \
    git

RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]