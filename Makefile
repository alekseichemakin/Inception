all:
	cd ./srcs/ && docker-compose up -d
stop:
	cd ./srcs/ && docker-compose stop
down:
	cd ./srcs/ && docker-compose down
restart:
	cd ./srcs/ && docker-compose restart
re:
	cd ./srcs/ && docker-compose up --build -d
logs:
	cd ./srcs/ && docker-compose logs -f
ps:
	cd ./srcs/ && docker-compose ps
rm:
	cd ./srcs/ && docker-compose rm
drm:	
	docker rmi -f $$(docker images -q)
drv:
	docker volume rm $$(docker volume ls -q)
drn:
	docker network rm $$(docker network ls -q)

delete: down rm drm drv

.PHONY: all stop down ps rm drv drm logs restart re drn rebuild delete