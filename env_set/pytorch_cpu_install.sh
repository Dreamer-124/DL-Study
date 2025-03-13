# 1. 创建深度学习环境
conda create -n deep_learning python=3.10

# 2. conda安装pytorch_cpu
conda install pytorch torchvision cpuonly -c pytorch

# 3. 检查pytorch_cpu是否安装成功
python
import torch  # 若没有任何输出，则证明安装成功
exit()


