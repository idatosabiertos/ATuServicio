# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo adding swap file
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap defaults 0 0' >> /etc/fstab

install "curl" curl
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.2.4
rvm use 2.2.4 --default 

sudo chmod 757 -R /usr/local/rvm/gems
gem install bundler --conservative

install "postgresql" postgresql postgresql-contrib libpq-dev
sudo -u postgres bash -c "psql -c \"CREATE ROLE root WITH SUPERUSER;\""
sudo -u postgres bash -c "psql -c \"ALTER ROLE root WITH LOGIN;\""
sudo -u postgres bash -c "psql -c \"CREATE ROLE vagrant WITH SUPERUSER;\""
sudo -u postgres bash -c "psql -c \"ALTER ROLE vagrant WITH LOGIN;\""

install "node js" nodejs npm

install "Git" git
cd /opt
sudo mkdir idatosabiertos
cd idatosabiertos
sudo git clone https://github.com/idatosabiertos/ATuServicio.git
cd ATuServicio
sudo chmod 757 -R /opt/idatosabiertos

bundle install
rake db:create db:migrate importer:all[2016]

bundle exec rails s -b 0.0.0.0
echo 'Navegar a http://localhost:8080'
