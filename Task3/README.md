# Monitor container resource usage and log CPU and memory usage with timestamps automatically. 

## Executed Commands
### Create Monitoring Directory
sudo mkdir -p /opt/container-monitor/logs
sudo chown -R ubuntu:ubuntu /opt/container-monitor

#Permissions
sudo chown -R ubuntu:ubuntu /opt/container-monitor

#Monitoring Script - Created script using nano editor
nano /opt/container-monitor/monitor.sh

#Provided Execute Permission
chmod +x /opt/container-monitor/monitor.sh

#Created the Log File
ls /opt/container-monitor/logs/

#To get log file
cat /opt/container-monitor/logs/monitor_$(date +%Y-%m-%d).log

### Set Up Cron Job
crontab -e
crontab -l

cat /opt/container-monitor/logs/monitor_$(date +%Y-%m-%d).log


# Live log monitoring
tail -f /opt/container-monitor/logs/monitor_$(date +%Y-%m-%d).log

## Relevant Files
1.  monitor.sh - Monitoring script 
2.  monitor.log - Daily Log File
3. cron.log - Cron output log

