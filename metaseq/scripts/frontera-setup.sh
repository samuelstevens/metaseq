#/usr/bin/env bash

module load gcc/9.1.0
module load cuda/11.3 cudnn nccl
module load python3/3.9.2
export LD_LIBRARY_PATH=/opt/apps/gcc/9.1.0/lib64/:/usr/lib64:$LD_LIBRARY_PATH
export CXX=g++

echo
echo "ACTIVATE YOUR VIRTUAL ENVIRONMENT NOW!"
