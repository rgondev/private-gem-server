build:
	docker-compose up -d --build

up:
	docker-compose up -d

down:
	docker-compose down

shell:
	docker-compose exec estrata_gemas sh
