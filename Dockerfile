FROM ubuntu:23.04

# Add SteamCMD ppa and install SteamCMD
RUN apt install software-properties-common
RUN apt-add-repository non-free
RUN dpkg --add-architecture i386
RUN apt update -y
RUN apt install -y steamcmd

WORKDIR /space-engineers-ds

# Copy over run script
COPY ./run.sh ./run.sh
RUN chmod +x ./run.sh

RUN ["./run.sh"]