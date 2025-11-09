SHELL := /bin/bash

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'


clean: ## Clean the project using Cargo
	cargo clean

build: ## Build the project using cargo
	cargo build

fmt: ## Format the file using cargo fmt (rustfmt)
	@rustup component add rustfmt 2> /dev/null
	cargo fmt

lint: ## Lint-check and format the file using clippy (cargo clippy)
	@rustup component add clippy 2> /dev/null
	cargo clippy