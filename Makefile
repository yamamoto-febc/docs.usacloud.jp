default: lint build

TOP_DIR := src/top
TERRAFORM_V1_DIR := src/terraform-v1
TERRAFORM_V2_DIR := src/terraform

.PHONY: build lint
build: clean
	@echo "running mkdocs in $(TOP_DIR)..."
	@(cd $(TOP_DIR); make build); cp -r $(TOP_DIR)/site/* docs/
	@echo "running mkdocs in $(TERRAFORM_V1_DIR)..."
	@mkdir -p docs/terraform-v1
	@(cd $(TERRAFORM_V1_DIR); make build); cp -r $(TERRAFORM_V1_DIR)/site/* docs/terraform-v1/
	@echo "running mkdocs in $(TERRAFORM_V2_DIR)..."
	@mkdir -p docs/terraform
	@(cd $(TERRAFORM_V2_DIR); make build); cp -r $(TERRAFORM_V2_DIR)/site/* docs/terraform/

lint:
	@echo "running textlint in $(TOP_DIR)..."
	@(cd $(TOP_DIR); make lint)
	@echo "running textlint in $(TERRAFORM_V1_DIR)..."
	@(cd $(TERRAFORM_V1_DIR); make lint)
	@echo "running textlint in $(TERRAFORM_V2_DIR)..."
	@(cd $(TERRAFORM_V2_DIR); make lint)

.PHONY: preview-top
preview-top:
	@(cd $(TOP_DIR); make preview)

.PHONY: preview-terraform-v1
preview-terraform-v1:
	@(cd $(TERRAFORM_V1_DIR); make preview)

.PHONY: preview-terraform
preview-terraform:
	@(cd $(TERRAFORM_V2_DIR); make preview)

clean:
	@rm -rf docs/*
	@echo "docs.usacloud.jp" > docs/CNAME

