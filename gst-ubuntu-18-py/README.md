```bash
docker build -t gstreamer-python:ubuntu-18 .
```

```bash
xhost +local:  # to enable GUI

sudo docker run --name gstreamer-python-ubuntu-18 -it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix/:/tmp/.X11-unix \
gstreamer-python:ubuntu-18
```
