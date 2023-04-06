FROM ghcr.io/kengo-k/dev-base-ubuntu:202304021230-09bb6ae

LABEL org.opencontainers.image.description="Rust言語による開発を行うための開発用イメージです"

USER root

RUN apt-get update && \
  apt-get install -y curl build-essential pkg-config libssl-dev

USER container-user

ENV RUST_VERSION 1.68.2
ENV RUSTUP_HOME /home/container-user/rustup
ENV CARGO_HOME /home/container-user/cargo
ENV PATH $CARGO_HOME/bin:$PATH

RUN curl https://sh.rustup.rs -sSf | \
  sh -s -- --default-toolchain $RUST_VERSION --no-modify-path -y && \
  rustup --version && \
  cargo --version && \
  rustc --version

RUN cargo install cargo-script && cargo install cargo-edit