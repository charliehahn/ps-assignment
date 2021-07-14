help: ## See below for more information:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

docker-up: ## Run a local Postgres container with provided data. Requires that Docker is installed locally
	docker-compose up -d sample-data 

docker-down: ## Stop running the local Postgres container
	docker-compose down sample-data

db-shell: docker-up ## Shell into running Postgres container to execute SQL
	docker-compose run --rm sample-data psql -h sample-data -p 5432 -U postgres
