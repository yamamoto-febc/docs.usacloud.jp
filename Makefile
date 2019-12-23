default: lint

TERRAFORM_DIR := src/terraform

.PHONY: build lint
build: clean
	@echo "running mkdocs in $(TERRAFORM_DIR)..."
	@mkdir -p docs/terraform
	@(cd $(TERRAFORM_DIR); make build); cp -r $(TERRAFORM_DIR)/site/* docs/terraform/

lint:
	@echo "running textlint in $(TERRAFORM_DIR)..."
	@(cd $(TERRAFORM_DIR); make lint)

.PHONY: preview-terraform
preview-terraform:
	@(cd $(TERRAFORM_DIR); make preview)

clean:
	rm -rf docs/*
