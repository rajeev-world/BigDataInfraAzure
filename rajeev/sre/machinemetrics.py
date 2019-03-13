import psutil
import datetime
print datetime.datetime.utcnow().strftime("%Y-%m-%d %H:%M UTC"),"       ", psutil.disk_usage('/').total,"        ", psutil.disk_usage('/').percent, "                ", psutil.virtual_memory().total,"            ",psutil.virtual_memory().percent,"                   ",psutil.cpu_percent(interval=10)
