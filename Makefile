run:
	@echo "Creating virtual environment..."
	@bash scripts/setup_env.sh

cleanup:
	@docker-compose down