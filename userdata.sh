#!/bin/bash
set -euxo pipefail

apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform AWS Project</title>
</head>
<body>
    <h1>Deployment Successful!</h1>
    <h2>AWS Infrastructure Automation Using Terraform</h2>
    <p>Ubuntu EC2 + Nginx + Terraform</p>
    <p>Infrastructure provisioned automatically.</p>
</body>
</html>
EOF
