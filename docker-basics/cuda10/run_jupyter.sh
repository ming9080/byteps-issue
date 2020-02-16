export LC_ALL=C.UTF-8
export LANG=C.UTF-8
    
NCPUS=`python -c "import multiprocessing as mp; print(mp.cpu_count())"`
echo "Detected $NCPUS cpus"

echo $PATH

jupyter notebook --allow-root  "$@" &

/usr/sbin/sshd -D & 

