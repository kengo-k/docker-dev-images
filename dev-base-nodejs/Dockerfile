FROM ghcr.io/kengo-k/dev-base-ubuntu:202303302220-6e8dc2f

LABEL org.opencontainers.image.description="NodeJsによる開発用イメージ(v19.8.1)"

RUN source ~/.zshrc && \
  asdf plugin add nodejs && \
  asdf install nodejs 19.8.1 && \
  asdf global nodejs 19.8.1