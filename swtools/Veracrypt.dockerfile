# BASE IMAGE
FROM ubuntu:22.04
# LABELS
LABEL name="Veracrypt"
LABEL maintainer="Álvaro López de Diego {raaowx} <raaowx@protonmail.com>"
LABEL version="1.0.0"
# INSTALL REQUERIMENTS AND CLEANUP
RUN apt-get update &&\
    apt-get install -y bat dmsetup libfuse2 nano sudo tree wget &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/**/*
# DOWNLOAD VERACRYPT 1.25.9 AND INSTALL
RUN case "$(uname -m)" in\
    amd64 | x86_64 | x64) ARCH="Ubuntu-22.04-amd64";;\
    arm | aarch64 | armv8*) ARCH="Ubuntu-20.04-arm64";;\
    armhf | armv7*) ARCH="Ubuntu-20.04-armhf";;\
    esac &&\
    wget -O /tmp/veracrypt.deb "https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-console-1.25.9-${ARCH}.deb" &&\
    dpkg -i /tmp/veracrypt.deb
# SET ALIASES
RUN echo "# ALIASES #\n\
alias bat='batcat --paging never'\n\
alias veracrypt.mount='veracrypt -m nokernelcrypto'\n\
alias veracrypt.umount='veracrypt -d'\n\
" >> /root/.bash_aliases
# SET WORKDIR
WORKDIR /root
