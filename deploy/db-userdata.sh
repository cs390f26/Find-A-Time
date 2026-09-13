#!/bin/bash
sudo yum update -y
sudo yum install -y postgresql15-server

sudo /usr/bin/postgresql-setup --initdb

sudo systemctl enable postgresql
sudo systemctl start postgresql

sudo -u postgres psql -c "CREATE DATABASE findatime;"
sudo -u postgres psql -c "CREATE USER appuser WITH PASSWORD 'PASSWORD';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE findatime TO appuser;"
