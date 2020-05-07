### Build image
```bash
docker build -t ros-kinetic:cuda10.1-ubuntu16.04 .
```

### Enable screen
```bash
xhost +local:
```

### Run container
```bash
docker run -it \
  --name="$DOCKER_NAME" \
  --env="DISPLAY=$DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --env="XAUTHORITY=$XAUTH" \
  --env="NVIDIA_DRIVER_CAPABILITIES=all" \
  --device /dev/dri \
  --volume="$XAUTH:$XAUTH" \
  --runtime=nvidia \
  ros-kinetic:cuda10.1-ubuntu16.04
```

### Enter existing container
```bash
docker exec -e DISPLAY=$DISPLAY -it $DOCKER_NAME /bin/bash
```
