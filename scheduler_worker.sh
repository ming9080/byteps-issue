export NVIDIA_VISIBLE_DEVICES=0,1,2,3  # gpus list

# dist scheduler
export DMLC_NUM_WORKER=2 
export DMLC_ROLE=scheduler 
export DMLC_NUM_SERVER=1 
export DMLC_PS_ROOT_URI=172.16.1.2 # the scheduler IP 
export DMLC_PS_ROOT_PORT=9000  # the scheduler port

python3 /usr/local/byteps/launcher/launch.py 

# # dist server
# export DMLC_NUM_WORKER=2
# export DMLC_ROLE=server  
# export DMLC_NUM_SERVER=1 
# export DMLC_PS_ROOT_URI=10.0.4.5 # the scheduler IP 
# export DMLC_PS_ROOT_PORT=9000  # the scheduler port
# python /usr/local/byteps/launcher/launch.py 
