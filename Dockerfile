FROM gitpod/workspace-full

# add your tools here
USER gitpod

RUN cargo install mdbook

USER root
