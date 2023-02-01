script_location=$(pwd)

cp ${script_location}/files/mongodb.repo /etc/yum.repo.d/mangodb.repo

yum install mongodb-org -y

systemctl enable mongod
systemctl start mongod
