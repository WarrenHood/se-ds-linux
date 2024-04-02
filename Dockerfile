FROM steamcmd/steamcmd:ubuntu-22

WORKDIR /space-engineers-ds

# Copy over run script
COPY ./run.sh ./run.sh
RUN chmod +x ./run.sh

CMD ["./run.sh"]