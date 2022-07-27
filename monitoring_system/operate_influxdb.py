import sys
sys.path.append('/home/ubuntu/.local/lib/python3.9/site-packages')
from influxdb_client import InfluxDBClient, Point
from data_model import DeviceInfo
from influxdb_client.client.write_api import SYNCHRONOUS


class OperateInfluxDB():
    def __init__(self, dbinfo):
        self.url = dbinfo.url
        self.org = dbinfo.org
        self.bucket = dbinfo.bucket
        self.token = dbinfo.token

    def write_db(self, deviceinfo):
        with InfluxDBClient(url=self.url, token=self.token, org=self.org) as client:
            write_api = client.write_api(write_options=SYNCHRONOUS)
            print ('deviceinfo', deviceinfo)
            write_api.write(
                bucket="rvlab",
                record=deviceinfo,
                record_measurement_key="measurement",
                record_time_key="timestamp",
                record_tag_keys=["ip_addr"],
                record_field_keys=["hostname", "cpu_utilization", "mem_total", "mem_free", "mem_percent", "mem_used"]
            )
        