FROM ubuntu:22.04

LABEL org.opencontainers.image.description="開発用イメージのためのベースイメージです(Ubuntu 22.04)"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# install required packages
RUN apt-get update && \
  apt-get install -y \
    sudo \
    curl \
    zsh \
    git \ 
    openssh-client \
    iputils-ping \
    tzdata \
    build-essential \
    locales && \
    locale-gen ja_JP.UTF-8

# setup user
ARG USERNAME=container-user
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd -r -g $USER_GID $USERNAME && useradd -r -u $USER_UID -g $USERNAME -m -s /bin/zsh $USERNAME \
  && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME
SHELL ["/bin/zsh", "-c"]

# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

COPY .zshrc /home/container-user/.zshrc

# install asdf
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/zsh"]