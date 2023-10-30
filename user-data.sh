#/bin/bash
#use this for user data script in your aws when 
#to install httpd ( amazon linux or redhat version 2)
yum update -y
yum install -y httpd
systemctl start  httpd
systemctl enable httpd
echo "<h1>HELLO WORLD, today is $date</h1>" > /var/www/html/index.html 