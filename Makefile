du:
	docker-compose up -d

dd:
	docker-compose down

db:
	sudo docker-compose up --build -d

test:
	docker-compose exec php-cli vendor/bin/phpunit

ni:
	docker-compose exec node yarn install

nrb:
	docker-compose exec node npm rebuild node-sass --force

nd:
	docker-compose exec node yarn run dev

nw:
	docker-compose exec node yarn run watch

perm:
	sudo chgrp -R www-data storage bootstrap/cache
	sudo chmod -R ug+rwx storage bootstrap/cache