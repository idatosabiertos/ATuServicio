# [A Tu Servicio](http://atuservicio.uy/) [![Build Status](https://travis-ci.org/idatosabiertos/ATuServicio.svg?branch=develop)](https://travis-ci.org/idatosabiertos/ATuServicio)

Sistema para visualización de datos del Sistema Nacional Integrado de Salud desarrollada por [DATA](https://www.datauy.org/) en convenio con la **DGSNIS** del [Ministerio de Salud Pública](http://www.msp.gub.uy/
).

## Requisitos previos

1. **Postgresql** 
	 - Servidor - [instalación](https://www.postgresql.org/download/linux/ubuntu/)
	 - Instalar libreria de desarrollo `apt-get -y install libpq-dev`
2. **Ruby 2.2.4**
	 - RVM  - [instalación](https://rvm.io/rvm/install) 
	 - `rvm install 2.2.4`
	 - `rvm use 2.2.4`
3. **Bundle** 
	 - `gem install bundler --conservative`
4. **NodeJS**
	 - `apt get install -y nodejs npm`

## Instalación

1. `git clone https://github.com/idatosabiertos/ATuServicio.git`
2. `cd ATuServicio`
3. `bundle install`
4. Levantar base de datos (postgres) e insertar datos (2014-2017) `rake db:create db:migrate importer:all[year]` 
5. `bundle exec puma -C config/puma.rb`
6. Navegar a http://localhost:8080 en la maquina host

### Vagrant  [/vagrant](https://github.com/idatosabiertos/ATuServicio/tree/develop/vagrant)
Previamente debe haber instalado [Vagrant](https://www.vagrantup.com/downloads.html) y [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. `git clone https://github.com/idatosabiertos/ATuServicio.git`
2. `cd ATuServicio/vagrant`
3. `vagrant up` // levanta una maquina virtual con todas las dependencias, configuraciones necesarias e instala la aplicación.
4. Navegar a http://12.168.54.4:8080 en la maquina host.

# Por más información visite la [WIKI](https://github.com/idatosabiertos/ATuServicio/wiki/Inicio)