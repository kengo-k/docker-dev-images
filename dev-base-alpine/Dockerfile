FROM alpine:3.17.2

LABEL description="this is a description!!"
# setup user
ARG USERNAME=container-user
ARG USER_UID=3000
ARG USER_GID=$USER_UID
RUN addgroup --gid $USER_GID $USERNAME \
    && adduser --uid $USER_UID --ingroup $USERNAME -h /home/$USERNAME -s /bin/ash -D $USERNAME

# install required packages
RUN apk update && \
  apk add  --no-cache \
    git openssh-client \
    make

USER $USERNAME
