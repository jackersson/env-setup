```bash
docker build -t gstreamer-python:ubuntu-18 .
```

```bash
xhost +local:  # to enable GUI

sudo docker run --name gstreamer-python-ubuntu-18 -it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix/:/tmp/.X11-unix \
gstreamer-python:ubuntu-18

docker run --runtime=nvidia -e DISPLAY=$DISPLAY  -it -v /home/taras/coder/camai/workspace:/workspace -p 8888:8880 nvcr.io/nvidia/tlt-streamanalytics:<version>

docker run --runtime=nvidia -e DISPLAY=$DISPLAY -it -v /tmp/.X11-unix/:/tmp/.X11-unix -v /home/taras/coder/camai/workspace:/workspace -p 8888:8881 camai:u18-gst14-tf14-py3
```
