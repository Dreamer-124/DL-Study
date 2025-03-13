# 1. 采用断点可继续下载的方式下载指定版本的anaconda到指定文件路径下
sudo wget -c 'https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh' -P /data/anaconda_install

# 2. 在包含安装脚本的文件夹下安装anaconda
 sudo bash Anaconda3-2023.09-0-Linux-x86_64.sh
 
# 3. 设置并激活系统环境变量
sudo gedit ~/.bashrc
export  PATH=$PATH:/data/anaconda3/bin
source ~/.bashrc

# 4. 验证系统环境变量设置和anaconda安装成功
conda env list

# 5. 设置当前conda虚拟环境存储在指定文件路径下
conda config
sudo getdit .condarc

# 6. 将下面内容写入.condarc文件
channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
  - defaults
show_channel_urls: true
envs_dirs: 
  - /data/anaconda3/envs
  - /home/ros/.conda/envs
pkgs_dirs: 
  - /data/anaconda3/pkgs
  - /home/ros/.conda/pkgs
  
# 7. 查看当前conda设置
conda info
 
# 8. 赋予访问anaconda环境目录的权限
 sudo chown 1000:1000 /data/anaconda3/envs
 
# 9. 创建并激活测试环境
conda create --name test python=3.10
conda activate test

