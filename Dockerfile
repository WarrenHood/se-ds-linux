FROM ubuntu:23.04

# Install SteamCMD
RUN apt install -y software-properties-common
RUN add-apt-repository -y multiverse
RUN dpkg --add-architecture i386
RUN apt update -y
RUN apt install -y steamcmd

WORKDIR /space-engineers-ds

# Copy over run script
COPY ./run.sh ./run.sh
RUN chmod +x ./run.sh

RUN ["./run.sh"]