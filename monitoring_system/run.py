import sys
sys.path.append('/home/ubuntu/.local/lib/python3.9/site-packages')
from get_deviceinfo import GetDeviceInfo
from operate_influxdb import OperateInfluxDB
from data_model import DataBaseInfo
import schedule


def job():
    getDeviceInfo = GetDeviceInfo()
    deviceinfo = getDeviceInfo.get_deviceinfo()
    databaseinfo = DataBaseInfo()
    operateDB.write_db(deviceinfo)
    print ('get and save data successfully')
   
schedule.every(10).minutes.do(job)

if __name__ == '__main__':
  while True:
    schedule.run_pending()
