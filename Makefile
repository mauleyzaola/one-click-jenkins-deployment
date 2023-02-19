# this makefile is just for running Jenkins locally without any ssl certificate
.PHONY: start
start:
	docker compose -f standalone.docker-compose.yaml up -d && docker compose logs -f

.PHONY: stop
stop:
	docker compose -f standalone.docker-compose.yaml down --remove-orphans

.PHONY: password
password:
	docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
