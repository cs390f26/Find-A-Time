#!/bin/bash
sudo yum update -y
sudo yum install -y python3 git

git clone https://github.com/cs390f26/find-a-time-monolith.git /home/ec2-user/find-a-time-monolith
cd /home/ec2-user/find-a-time-monolith

python3 -m venv .venv
.venv/bin/pip install -e .
.venv/bin/pip install gunicorn

# DB connection info gets filled in after the DB instance is running
echo "DATABASE_URL=postgresql://appuser:PASSWORD@<DB_PRIVATE_IP>:5432/findatime" > .env

sudo cp deploy/web-server.service /etc/systemd/system/
sudo systemctl enable web-server
sudo systemctl start web-server
