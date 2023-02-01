script_location=$(pwd)

cp ${script_location}/files/mongodb.repo /etc/yum.repo.d/mongodb.repo

yum yum install mongodb -org -y

systemctl enable mongod
systemctl start mongod