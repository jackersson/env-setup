docker build -t ros-kinetic:cuda10.1-ubuntu16.04 .

xhost +local:

docker run -it \
  --name="ros-kinetic-ui" \
  --env="DISPLAY=$DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --env="XAUTHORITY=$XAUTH" \
  --env="NVIDIA_DRIVER_CAPABILITIES=all" \
  --device /dev/dri \
  --volume="$XAUTH:$XAUTH" \
  --runtime=nvidia \
  ros-kinetic:cuda10.1-ubuntu16.04

docker exec -e DISPLAY=$DISPLAY -it $DOCKER_NAME /bin/bash
