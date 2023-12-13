build:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build

up:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

down:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml down

shell:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec estrata_gemas sh
