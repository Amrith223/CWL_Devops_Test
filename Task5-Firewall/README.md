# Task 5: Firewall Configuration
# Executed Commands

# Install UFW
sudo apt update -y
sudo apt install ufw -y

# se policies
Policies
sudo ufw default deny incoming
sudo ufw default allow outgoing


# Configure Rules
sudo ufw allow from YOUR_IP to any port 22
sudo ufw allow 80/tcp
sudo ufw allow 8000/tcp
sudo ufw allow 443/tcp

# Enabled Firewall
sudo ufw enable



# Relavant Files
ufw-status.txt   | Current firewall rules status
ufw-rules.txt    | UFW rules configuration
ufw-defaults.txt | Default UFW policies
config-info.txt  | Server and config information

