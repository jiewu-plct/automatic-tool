##### 1. 功能

这组脚本实现的功能是抓取device hostname, ip, cpu, memory的相关信息并存储到InfluxDB

##### 2. 文件说明

data_model: 定义了抓取的device硬件相关信息的模型，执行脚本前需要在其中的类DataBaseInfo中设置相应的database参数

get_deviceinfo.py: 定义了抓取device硬件相关信息的类

operate_influxdb.py: 定义了将信息写入InfluxDB的类

run.py: python运行脚本，10mins抓取并存储一次数据

requirements.txt: 这组脚本需要用到的python第三方模块

python_auto.sh: 执行run.py的shell脚本，这个脚本的作用是为了可以在device上实现开机自动运行python脚本

##### 3. 使用方法

step1: 将这组脚本全部复制到device, 执行pip install -r requirements.txt, 将需要使用的第三方模块一次性安装

step2: 执行脚本run.py

