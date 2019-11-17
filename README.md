# Whale

Whale is a repository for store all the Dockerfiles that I'll be creating for different purposes.  
I'll add to this README a list with the following information about every Dockerfile:
- Description
- Run the container
- Requeriments
- Pre-configuration

<img src='./whale.png' width=35>

**IMPORTANT:** Recommended commands and requeriments list are intended to containers running on MacOS.  

## Dockerfile list
### Chromium
**Description:** Image of Ubuntu 18.04 with Chromium browser installed.  

**Run the container:**  
`docker run -d --cpuset-cpus 0 --memory 1024mb --net host -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Docker:/home/chromium/Downloads --name chromium --privileged raaowx/w3browser:chromium`  

**Requeriments:**  
- XQuartz  

**Pre-Configuration:**  
- Configure XQuartz to allow connections from network clients
- Add own IP address to X server with: `xhost +$IP`

### Firefox
**Description:** Image of Ubuntu 18.04 with Firefox browser installed.  

**Run the container:**  
`docker run -d --cpuset-cpus 0 --memory 1024mb --net host -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Docker:/home/firefox/Downloads --name firefox --privileged raaowx/w3browser:firefox`  

**Requeriments:**  
- XQuartz  

**Pre-Configuration:**  
- Configure XQuartz to allow connections from network clients
- Add own IP address to X server with: `xhost +$IP`

### Licensing
All files are under the same license.  

### Project Icon
[Icon](https://www.flaticon.com/free-icon/whale_1998810) made by [Flat Icons](https://www.flaticon.com/authors/flat-icons").  

Copyright © 2019 **Álvaro López de Diego** [raaowx@protonmail.com]  