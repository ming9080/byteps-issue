pip3 install pillow==6.1
    
export NVIDIA_VISIBLE_DEVICES=0  
export DMLC_WORKER_ID=0 
export DMLC_NUM_WORKER=2 
export DMLC_ROLE=worker 
export DMLC_NUM_SERVER=1 
export DMLC_PS_ROOT_URI=172.16.1.2 # the scheduler IP 
export DMLC_PS_ROOT_PORT=9000 # the scheduler port    

#export BYTEPS_FORCE_DISTRIBUTED=1

#python3 /usr/local/byteps/launcher/launch.py python3 /usr/local/byteps/example/pytorch/benchmark_byteps.py --model resnet50 --num-iters 1000000      
python3 /usr/local/byteps/launcher/launch.py \
    python3 /usr/local/byteps/example/pytorch/benchmark_byteps.py \
    --model resnet50 --num-iters 1000000

