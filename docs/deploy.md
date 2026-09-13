# Deployment

This app runs on two separate EC2 instances inside the same VPC:

1. **Web server instance** — runs the Flask app via Gunicorn
2. **Database instance** — runs PostgreSQL

## Steps

1. Launch two EC2 instances (Amazon Linux) in the same VPC/subnet.
2. On the database instance, use `deploy/db-userdata.sh` as the launch user data script.
3. Once the DB instance has a private IP, update `deploy/web-userdata.sh` with that IP in the `DATABASE_URL` line.
4. On the web instance, use `deploy/web-userdata.sh` as the launch user data script.
5. Configure the database instance's security group to only accept inbound traffic on port 5432 from the web instance's security group — not from the public internet.
6. The web app becomes available on the web instance's public IP, port 8000 (or behind a load balancer/reverse proxy if configured).
