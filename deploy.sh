#!/bin/bash
cd ~/DevOpsProject
npm install
openssl req -x509 -newkey rsa:4096 -keyout privatekey.pem -out server.crt -days 10000 -nodes -subj "/C=IE/ST=Leinster/L=Dublin/O=National College of Ireland/OU=School of Computing/CN=ncirl.ie" || true
pm2 restart simple_app || pm2 start ./bin/www --name simple_app
