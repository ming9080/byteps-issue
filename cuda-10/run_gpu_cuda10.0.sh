sudo nvidia-docker run -it --shm-size=4g -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  \
     -p 7842:7842 -p 8787:8787 -p 8786:8786 -p 8788:8788 -p 8888:8888 -p 5000:5000 -v ~/dev/:/root/sharedfolder -v ~/data/:/root/data -v ~/dev/.cache:/root/.cache/ -v ~/dev/.torch:/root/.torch/ -v /big-data/:/root/big-data/ torch-cuda-10.0  bash
