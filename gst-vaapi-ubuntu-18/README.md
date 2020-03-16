```bash
docker build -t gstreamer-vaapi:latest .
```

```bash
xhost +local:

sudo docker run --name gstreamer-vaapi -it \
-d /dev/dri:/dev/dri \
-e DISPLAY=$DISPLAY
-v /tmp/.X11-unix/:/tmp/.X11-unix \
gstreamer-vaapi:latest
```