# [W3Browser](https://hub.docker.com/repository/docker/raaowx/w3browser)
### Chromium
**Description:** Image of Ubuntu 18.04 with Chromium browser installed.  
**Run the container:** `docker run -it --cpuset-cpus 0-1 --memory 2048mb --network host -e DISPLAY=<ip_address>:0 -v /dev/shm:/dev/shm -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Docker:/home/chromium/Downloads --name chromium --privileged raaowx/w3browser:chromium`  

### Firefox
**Description:** Image of Ubuntu 18.04 with Firefox browser installed.  
**Run the container:** `docker run -it --cpuset-cpus 0-1 --memory 2048mb --network host -e DISPLAY=<ip_address>:0 -v /dev/shm:/dev/shm -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Docker:/home/firefox/Downloads --name firefox --privileged raaowx/w3browser:firefox`  