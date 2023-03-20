FROM ghcr.io/kengo-k/dev-base-ubuntu:202303191246-53cf423

LABEL org.opencontainers.image.description="Go言語による開発を行うための開発用イメージです"

RUN source ~/.zshrc && \
  asdf plugin add golang && \
  asdf install golang 1.20.2 && \
  asdf global golang 1.20.2