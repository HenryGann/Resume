FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    texlive \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    poppler-utils \
    texlive-xetex \
    zsh

# Set the shell to zsh
RUN chsh -s /bin/zsh
SHELL ["/bin/zsh", "-c"]
