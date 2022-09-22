#!/bin/bash
 yum -y update
 yum -y install httpd
 echo "<h2>WebServer</h2><br>Test: Built by Terraform!"  >  /var/www/html/index.html
 sudo service httpd start
 chkconfig httpd on
 cd /var/www/html
 sudo chgrp -R ec2-user /var/www
 sudo chmod -R g+rw /var/www
