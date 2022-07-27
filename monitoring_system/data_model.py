from collections import namedtuple


class DeviceInfo(namedtuple('DeviceInfo',['measurement', 'ip_addr', 'hostname', 'cpu_utilization', 'mem_total', 'mem_free', 'mem_percent', 'mem_used', 'timestamp'])):
    pass


class DataBaseInfo():
    def __init__(self):
        self.url = 'database ip'
        self.org = 'database org'
        self.bucket = 'database bucket'
        self.token = 'database token'

