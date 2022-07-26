.PHONY: help
.DEFAULT_GOAL := help

help: ## Show this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

update_ubuntu: ## Update Ubuntu system
	sudo apt update
	sudo apt upgrade -y
	sudo apt autoremove -y
	sudo apt clean

update_arch: ## Update Arch based system
	yay
