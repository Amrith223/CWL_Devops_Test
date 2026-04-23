# Task 4: Secure Monitoring Logs

# Executed Commands
1. Create Dedicated User
sudo useradd -m -s /bin/bash monitor_user
sudo passwd monitor_user
id monitor_user

2. Create Directory
sudo mkdir -p /opt/container-monitor/logs
3. Assign Ownership
sudo chown -R monitor_user:monitor_user /opt/container-monitor
4. Provided the permission
sudo chmod 750 /opt/container-monitor
sudo chmod 750 /opt/container-monitor/logs
sudo chmod 750 /opt/container-monitor/monitor.sh
5. Added the Docker Group
sudo usermod -aG docker monitor_user
groups monitor_user
6.  Cron Job
sudo crontab -u monitor_user -e
sudo crontab -u monitor_user -l
7. Log Check
sudo -u monitor_user cat /opt/container-monitor/logs/monitor_$(date +%Y-%m-%d).log



# Relevant Files

monitor.sh    | Monitoring script 
