FROM mariadb:10.11.9

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV HOME /root

USER 0

RUN mkdir -p /data/mysql/data
RUN chmod 755 /data/mysql/data

# Setting up initial packages
RUN apt update && apt install -y \
    wget \
    less \
    vim \
    git \
    curl \
    htop \
    unzip \
    inetutils-ping \
    inetutils-tools \
    net-tools \
    lsb-release \
    percona-toolkit \
    dnsutils \
    software-properties-common \
    ntp \
    rsyslog \
    curl \
    telnet \
    gnupg2 \
    tmux \
    netcat \
    pv \
    ncdu \
    jq \
    iptables \
    sysstat \
    openssh-server \
    openssh-client \
    && \
    apt-get clean
