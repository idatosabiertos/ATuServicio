# [A Tu Servicio](http://atuservicio.uy/) [![Build Status](https://travis-ci.org/idatosabiertos/ATuServicio.svg?branch=develop)](https://travis-ci.org/idatosabiertos/ATuServicio)  

Sistema para visualización de datos del Sistema Nacional Integrado de Salud desarrollada por [DATA](https://www.datauy.org/) en convenio con la **DGSNIS** del [Ministerio de Salud Pública](http://www.msp.gub.uy/) con el apoyo de la Iniciativa Latinoamericana por los Datos Abiertos [ILDA](https://www.idatosabiertos.org/).  

System of data visualization of the National Integrated Health System developed by [DATA](https://www.datauy.org/) in agreement with the **DGSNIS** of the [Ministry of Public Health](http://www.msp.gub.uy/) with the support of the Latin American Initiative for Open Data [ILDA](https://www.idatosabiertos.org/).

## REQUERIMIENTOS / REQUIREMENTS

1. **Postgresql** 
	 - [instalación/Installation](https://www.postgresql.org/download/linux/ubuntu/)
	 - $`apt-get -y install libpq-dev`
2. **Ruby 2.2.4**
	 - RVM  - [instalación/Installation](https://rvm.io/rvm/install) 
	 - $`rvm install 2.2.4`
	 - $`rvm use 2.2.4`
3. **Bundle** 
	 - $`gem install bundler --conservative`
4. **NodeJS**
	 - $`apt get install -y nodejs npm`

## INSTALACIÓN / INSTALLATION

1. $`git clone https://github.com/idatosabiertos/ATuServicio.git`
2. $`cd ATuServicio`
3. $`bundle install`
4. $`rake db:create db:migrate importer:all[year]` 
5. $`bundle exec puma -C config/puma.rb`
6. Navegar a / Navigate to [http://localhost:3000](http://localhost:3000) 

### Vagrant  [/vagrant](https://github.com/idatosabiertos/ATuServicio/tree/develop/vagrant)
REQUERIMIENTOS / REQUIREMENTS: [Vagrant](https://www.vagrantup.com/downloads.html) && [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

1. $`git clone https://github.com/idatosabiertos/ATuServicio.git`
2. $`cd ATuServicio/vagrant`
3. $`vagrant up` 
4. Navegar a / Navigate to [http://localhost:8080](http://localhost:8080) 

# Por más información visite la [WIKI](https://github.com/idatosabiertos/ATuServicio/wiki/Inicio)
# For more information visit [WIKI](https://github.com/idatosabiertos/ATuServicio/wiki/Home)