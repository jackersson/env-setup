DOCKER_NAME=${DOCKER_NAME:-"drone-sim"}

xhost +local:

docker run -it \
  --name=$DOCKER_NAME \
  --env="DISPLAY=$DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --env="XAUTHORITY=$XAUTH" \
  --env="NVIDIA_DRIVER_CAPABILITIES=all" \
  --volume="$XAUTH:$XAUTH" \
  --runtime=nvidia \
  ros-melodic:cuda10.1-ubuntu18.04