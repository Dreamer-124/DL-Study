# 1. 在 site: https://developer.nvidia.com/cuda-toolkit 选择合适的cuda版本进行安装

# 2. 激活虚拟环境
conda activate deep_learning

# 3. 下载相应的cuda并进行安装
sudo wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
sudo sh cuda_11.8.0_520.61.05_linux.run --toolkit --silent --override

# 4. 导入系统环境变量
"""
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export PATH=$PATH:/usr/local/cuda/bin
export CUDA_HOME=$CUDA_HOME:/usr/local/cuda
"""

# 5. 激活系统环境变量
source ~/.bashrc

# 6. 进行cuda安装检查和nvidia驱动检查
nvcc --version

