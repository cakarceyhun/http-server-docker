# syntax = docker/dockerfile:1.4.0

FROM ubuntu
RUN apt update
RUN apt -y upgrade
RUN apt -y install build-essential
RUN apt -y install git
RUN apt -y install cmake
RUN apt -y install vim
RUN apt -y install emacs
RUN apt -y install python3
RUN apt -y install global
RUN apt -y install tig
RUN mkdir -p /proj

RUN mkdir -p /root/.emacs.d
ADD init.el /root/.emacs.d

EXPOSE 8000
WORKDIR /proj
CMD python3 -m http.server
