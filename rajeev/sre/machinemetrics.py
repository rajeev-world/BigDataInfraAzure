import psutil
import datetime
print datetime.datetime.utcnow().strftime("%Y-%m-%d %H:%M UTC"),"       ", "{:,}".format(psutil.disk_usage('/').total/(1024*1024)),"MB           ", psutil.disk_usage('/').percent, "                ", "{:,}".format(psutil.virtual_memory().total/(1024*1024)),"MB               ",psutil.virtual_memory().percent,"                   ",psutil.cpu_percent(interval=10)
