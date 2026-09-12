#!/bin/bash
sudo yum update -y
sudo yum install -y python3 git
git clone https://github.com/cs390f26/find-a-time-monolith.git /home/ec2-user/find-a-time-monolith
cd /home/ec2-user/find-a-time-monolith
python3 -m venv .venv
.venv/bin/pip install -e .
sudo cp deploy/find-a-time.service /etc/systemd/system/
sudo systemctl enable find-a-time
sudo systemctl start find-a-time
