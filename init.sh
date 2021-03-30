
sudo mount -o remount,rw '/sys/fs/cgroup'
sudo rm -rf '/sys/fs/cgroup/cpuacct,cpu'
sudo ln -s '/sys/fs/cgroup/cpu,cpuacct' '/sys/fs/cgroup/cpuacct,cpu'

yum install docker -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&  sudo chmod +x /usr/local/bin/docker-compose  && docker-compose --version && systemctl restart docker && systemctl enable  docker && systemctl stop postfix && systemctl disable postfix

docker-compose up -d --build
#docker-compose up -d
docker ps -a
