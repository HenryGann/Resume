FROM ubuntu:22.04

# Set timezone environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Pacific/Auckland

# Use NZ mirrors and install packages
RUN sed -i 's|http://archive.ubuntu.com/ubuntu|http://nz.archive.ubuntu.com/ubuntu|g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y --no-install-recommends \
    texlive \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    poppler-utils \
    make \
    texlive-xetex && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the shell to bash
SHELL ["/bin/bash", "-c"]
