script_location=$(pwd)

echo -e "\e[35m Install Nginx\e[0m"
yum install nginx -y

echo -e "\e[35m Remove Nginx\e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[35m Download Frontend Content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html

echo -e "\e[35m Extract Frontend Content \e[0m"
unzip /tmp/frontend.zip

echo -e "\e[35m Copy RoboShop Nginx Config file\e[0m"
cp ${script_location}/files/nginx-roboshop.conf /etc/nginx/defalut.d/rpboshop.cof

echo -e "\e[35m Enable Nginx\e[0m"
systemctl enable nginx

echo -e "\e[35m Start Nginx\e[0m"
systemctl restart nginx


