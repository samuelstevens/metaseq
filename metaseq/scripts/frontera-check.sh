#/usr/bin/env bash

set -u

echo "Checking if PyTorch can find your GPUs."
cuda_available=$(python -c "import torch; print(torch.cuda.is_available())")
if [[ $cuda_available != "True" ]]; then
  echo "PyTorch cannot find GPUs!"
  echo "Try running:"
  echo '  export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH'
  exit 1
fi

if command -v icc; then
  echo "Found icc on your path."
  echo "Try with a fresh environment"
  exit 1
fi

if ! which gcc | grep 9.1; then
  echo "You have the wrong version of gcc:"
  which gcc
  echo "Try module load gcc/9.1.0"
fi

if which pip | grep gcc; then
  echo "You have the wrong pip first in your path:"
  which pip
  echo "Try to reactivate your virtual environment"
fi
