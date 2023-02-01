script_location=$(pwd)

cp ${script_location}/files/mongodb.repos /etc/yum.repos.d/mongodb.repo

yum yum install mongodb -org -y

systemctl enable mongod
systemctl start mongod