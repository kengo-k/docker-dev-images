FROM ubuntu:22.04

LABEL org.opencontainers.image.description="開発用ベースイメージ(Ubuntu 22.04)"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# install required packages
RUN apt-get update && \
  apt-get install -y \
  sudo \
  vim \
  curl \
  git \ 
  openssh-server \
  iputils-ping \
  tzdata \
  build-essential \
  locales && \
  locale-gen ja_JP.UTF-8

# setup user
ARG USERNAME=container-user
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd -r -g $USER_GID $USERNAME && useradd -r -u $USER_UID -g $USERNAME -m $USERNAME \
  && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME
RUN mkdir ~/.ssh && chmod 755 ~/.ssh

COPY .bashrc /home/container-user/.bashrc

# install bash-git-prompt
RUN git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# install asdf
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2

WORKDIR /home/container-user

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]