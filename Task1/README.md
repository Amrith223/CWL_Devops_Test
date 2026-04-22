# Task 1: Server Setup and SSH Configuration
Provisioned a Linux server on AWS EC2 and configured secure SSH

## Environment Details
| Detail            | Value                        |
|-------------------|------------------------------|
| Cloud Provider    | AWS                          |
| Instance Type     | t3.small                     |
| OS                | Ubuntu Server 22.04 LTS      |
| Region            | ap-south-1 (Mumbai)          |
| Public IP         | 13.233.140.131               |
| SSH Username      | ubuntu                       |
| Key Pair Name     | Linuxserver.pem              |

## Commands
#Setting permission for key file
1. chmod 400 ~/Downloads/Linuxserver.pem
# Connecting Ec2 instance via SSH
2. ssh -i ~/Downloads/Linuxserver.pem ubuntu@13.233.140.131
#verified SSH running status
3. sudo systemctl status ssh
#Password Authentication status
4. sudo grep "PasswordAuthentication" /etc/ssh/sshd_config
# Disable Password Authentication
5. sudo nano /etc/ssh/sshd_config
 Updated the Password Authentication as No and restarted the SSH using:
5(a). sudo systemctl restart ssh
# Verified logged in User and Os Details
6. whoami
7. uname -a


## Configuration Steps

1. Logged into AWS account>> Navigated the EC2 instance
2. Selected Ubuntu Server 22.04 LTS
3. Chose t3.small instance type
4. Created new key pair: Linuxserver.pem
5. Configured Security Group: Allowed SSH (port 22)
6. Launched the instance
7.  Added Inbound Rule:
  - Type: SSH
  - Protocol: TCP
  - Port: 22
  - Source: 0.0.0.0/0 (Anywhere IPv4)
8. Using terminal ( Git Bash)
 Connected using: ssh -i Linuxserver.pem ubuntu@13.233.140.131


## Relevant Files
1. Linuxserver.pem : Private key for SSH login 
2. sshd_config: SSH daemon configuration file
