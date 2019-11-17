# BASE IMAGE
FROM ubuntu:18.04
# LABELS
LABEL name="Firefox Browser"
LABEL maintainer="Álvaro López de Diego {raaowx} <raaowx@protonmail.com>"
LABEL version="1.0.0"
# CREATE USER FIREFOX
RUN useradd -c "Firefox Browser User" -G audio,video -m -r -s /bin/bash firefox
# CREATE DOWNLOAD FOLDER AND ASSIGN OWNERSHIP
RUN mkdir /home/firefox/Downloads &&\
    chown -R firefox:firefox /home/firefox/Downloads
# INSTALL FIREFOX BROWSER AND CLEANUP
RUN apt-get update &&\
    apt-get install -y firefox &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/**/*
# SET USER AS 'firefox'
USER firefox
# SET WORKDIR
WORKDIR /home/firefox
# SET ENTRYPOINT
ENTRYPOINT ["firefox"]
