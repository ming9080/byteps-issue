sudo nvidia-docker run -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  -v ~/dev/:/root/sharedfolder -v  ~/data/:/root/data nccl-torch-cuda-10.0 bash -c 'cd /root/sharedfolder/production/v-gpu/byteps/docker; ./scheduler_worker.sh; exec "${SHELL:-sh}"'

#/root/sharedfolder/production/v-gpu/byteps/docker/scheduler_worker.sh
