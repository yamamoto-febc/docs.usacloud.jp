default: lint build

TOP_DIR := src/top
TERRAFORM_DIR := src/terraform

.PHONY: build lint
build: clean
	@echo "running mkdocs in $(TOP_DIR)..."
	@(cd $(TOP_DIR); make build); cp -r $(TOP_DIR)/site/* docs/
	@echo "running mkdocs in $(TERRAFORM_DIR)..."
	@mkdir -p docs/terraform
	@(cd $(TERRAFORM_DIR); make build); cp -r $(TERRAFORM_DIR)/site/* docs/terraform/

lint:
	@echo "running textlint in $(TOP_DIR)..."
	@(cd $(TOP_DIR); make lint)
	@echo "running textlint in $(TERRAFORM_DIR)..."
	@(cd $(TERRAFORM_DIR); make lint)

.PHONY: preview-top
preview-top:
	@(cd $(TOP_DIR); make preview)

.PHONY: preview-terraform
preview-terraform:
	@(cd $(TERRAFORM_DIR); make preview)

clean:
	@rm -rf docs/*
	@echo "docs.usacloud.jp" > docs/CNAME

