#!/bin/bash

ssh -v -i /home/bhavesh/bhavesh-dgcloud.pem ec2-user@52.90.35.87 << EOF

echo '1. Updating sources'
cd testcode/
git checkout --force master
git pull

sudo cp -r * /var/www/html/
echo "2. Restart apache"
sudo service httpd restart

echo 'Done!'

EOF
