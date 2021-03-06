sudo yum install -y epel-release
sudo yum update -y
sudo yum groupinstall -y "Development Tools"
sudo yum install -y wget

sudo rpm --import https://mirror.go-repo.io/centos/RPM-GPG-KEY-GO-REPO
curl -s https://mirror.go-repo.io/centos/go-repo.repo | sudo tee /etc/yum.repos.d/go-repo.repo
sudo yum install -y golang

curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum install -y nodejs

curl --silent --location https://get.docker.com | sudo bash -
sudo usermod -aG docker vagrant

sudo systemctl enable docker
sudo systemctl start docker

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo npm install -g serverless
