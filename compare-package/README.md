##### 该python脚本的功能是比对不同硬件框架所支持的软件包

###### 1. arm64.txt是ubuntu20.04 arm64支持的package list

###### 2. riscv64.txt是ubuntu20.04 riscv64支持的package list
###### 3. run.py实现的功能是将arm64.txt和riscv64.txt里的package进行比对，分别输出相对于riscv64.txt，arm64.txt里缺失的package以及相对于arm64.txt，riscv64.txt里缺失的包
###### 4. 执行完run.py会自动产生比对结果missing packages list.xlsx

###### 5. requirements.txt中列出的是执行改脚本需要安装的python第三方软件包列表，可以通过执行pip install -r requirements.txt来一次性全部安装
