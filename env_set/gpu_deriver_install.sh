# 1. 修改属性
sudo chmod 666 /etc/modprobe.d/blacklist.conf  

# 2. 备份文件
sudo cp /etc/modprobe.d/blacklist.conf /etc/modprobe.d/blacklist.conf.backup

# 2. 编辑配置文件
sudo gedit /etc/modprobe.d/blacklist.conf

# 3. 在文本末尾追加如下内容
"""
blacklist vga16fb
blacklist nouveau
blacklist rivafb
blacklist rivatv
blacklist nvidiafb
"""

# 4. 执行更新命令
sudo update-initramfs -u

# 5. 重启电脑后查看是否被禁用（若没有任何输出则代表禁用成功）
lsmod | grep nouveau

# 6. 安装gcc
sudo apt-get  install  build-essential

# 7. 检查gcc是否安装成功
gcc --version

# 8. 查看自己的显卡型号，然后在site: https://www.nvidia.cn/geforce/drivers/ 上下载对应的驱动程序

# 9. 关闭图形界面 
sudo service lightdm stop

