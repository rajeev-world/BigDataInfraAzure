import psutil
import datetime
print datetime.datetime.utcnow().strftime("%Y-%m-%dT%H:%M:%S+00:00")," ",psutil.virtual_memory().total,"    ",psutil.virtual_memory().available,"      ",psutil.virtual_memory().percent,"         ",psutil.cpu_percent(interval=10)
