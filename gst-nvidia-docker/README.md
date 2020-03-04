
### Purpose
- Installs nvenc/nvdec plugins from [gst-plugins-bad](https://github.com/GStreamer/gst-plugins-bad)
- [Video Codec SDK](https://developer.nvidia.com/nvidia-video-codec-sdk/download)

- Use [Docker Hub](https://hub.docker.com/r/nvidia/cuda/tags/) to search for particular version of base container
```bash
FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
```