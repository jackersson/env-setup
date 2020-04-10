```bash
docker build -t gstreamer-python:ubuntu-16 .
```


```bash
xhost +local:

sudo docker run --name gstreamer-python -it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix/:/tmp/.X11-unix \
gstreamer-python:ubuntu-16
```