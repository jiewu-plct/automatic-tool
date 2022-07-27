import sys
sys.path.append('/home/ubuntu/.local/lib/python3.9/site-packages')
import psutil
import socket
from collections import namedtuple
import datetime
from data_model import DeviceInfo


class GetDeviceInfo():
    def get_deviceinfo(self):
        #get hostname
        hostname = socket.gethostname()

        #get ip address
        s = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
        s.connect(('www.baidu.com',80))
        ipaddr = s.getsockname()[0]

        #get cpu utilization
        cpu = psutil.cpu_percent(1)

        #get memory info
        mem = psutil.virtual_memory()
        memtotal = mem.total
        memfree = mem.free
        mempercent = mem.percent
        memused = mem.used

        #get timestamp
        timestamp=datetime.datetime.utcnow()
   
        deviceinfo = DeviceInfo(hostname, ipaddr, hostname, cpu, memtotal, memfree, mempercent, memused, timestamp)
        return deviceinfo
        
