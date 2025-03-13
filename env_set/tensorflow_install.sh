# 1. 创建虚拟环境
conda create -n tensorflow python=3.10

# 2. 激活环境并使用清华源进行安装
conda activate tensorflow
pip install tensorflow --index-url=https://pypi.tuna.tsinghua.edu.cn/simple

# 3. 测试当前tensorflow是否安装成功
python -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
