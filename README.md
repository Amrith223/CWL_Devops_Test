# Task 1: Server Setup and SSH Configuration

## Environment Details
| Detail            | Value                        |
|-------------------|------------------------------|
| Cloud Provider    | AWS                          |
| Instance Type     | t2.micro                     |
| OS                | Ubuntu Server 22.04 LTS      |
| Region            | ap-south-1 (Mumbai)          |
| Public IP         | 13.233.140.131               |
| SSH Username      | ubuntu                       |
| Key Pair Name     | Linuxserver.pem              |

##Commands
#Set correct permissions on the key file
1. chmod 400 ~/Downloads/Linuxserver.pem
# Connect to EC2 instance via SSH
2. ssh -i ~/Downloads/Linuxserver.pem ubuntu@13.233.140.131
# verified SSH Running Status
3. sudo systemctl status ssh
# verified password authentication status:
4. sudo grep "PasswordAuthentication" /etc/ssh/sshd_config
# Disable password authentication
5. sudo nano /etc/ssh/sshd_config   >  As status of password authentication show Yes, used this command and updated the Password Authentication as No and Restarted the SSH using below command.
   5 (a). sudo systemctl restart ssh
# Verified logged user and running server details
6. whoami
7. uname -a
# After that used Exit Command to get back to local Terminal ( I used Git Bash) and connected the SSH without password using the below command
8. ssh -i ~/Downloads/my-server-key.pem ubuntu@13.233.140.131

## Configuration Steps
