# BASE IMAGE
FROM ubuntu:18.04
# LABELS
LABEL name="Chromium Browser"
LABEL maintainer="Álvaro López de Diego {raaowx} <raaowx@protonmail.com>"
LABEL version="1.0.0"
# CREATE USER CHROMIUM
RUN useradd -c "Chromium Browser User" -G audio,video -m -r -s /bin/bash chromium
# CREATE DOWNLOAD FOLDER AND ASSIGN OWNERSHIP
RUN mkdir /home/chromium/Downloads &&\
    chown -R chromium:chromium /home/chromium/Downloads
# INSTALL CHROMIUM BROWSER AND CLEANUP
RUN apt-get update &&\
    apt-get install -y --no-install-recommends chromium-browser &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/**/*
# SET USER AS 'chromium'
USER chromium
# SET WORKDIR
WORKDIR /home/chromium
# SET ENTRYPOINT
ENTRYPOINT ["chromium-browser"]
