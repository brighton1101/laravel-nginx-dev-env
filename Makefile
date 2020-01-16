all: down build up

##
 # ONLY CALL THIS ONCE
 ##
init:
	docker exec -it php composer create-project laravel/laravel /var/www/temp_lara 5.8.* 
	docker exec -it php cp -ar /var/www/temp_lara/. /var/www/html/
	docker exec -it php rm -rf /var/www/temp_lara/
	docker exec -it php composer install

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

bash:
	docker exec -it php /bin/bash

