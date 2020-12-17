default: preview

TOP_DIR := src/top
USACLOUD_DIR := src/usacloud
TERRAFORM_V1_DIR := src/terraform-v1
TERRAFORM_V2_DIR := src/terraform

.PHONY: build lint

build-textlint:
	docker build -t sacloud/textlint .github/actions/textlint

lint: build-textlint
	@echo "running textlint in $(TOP_DIR)..."
	@(cd $(TOP_DIR); make lint)
	@echo "running textlint in $(TERRAFORM_V1_DIR)..."
	@(cd $(TERRAFORM_V1_DIR); make lint)
	@echo "running textlint in $(TERRAFORM_V2_DIR)..."
	@(cd $(TERRAFORM_V2_DIR); make lint)
	@echo "running textlint in $(USACLOUD_DIR)..."
	@(cd $(USACLOUD_DIR); make lint)

.PHONY: preview-top
preview-top:
	@(cd $(TOP_DIR); make preview)

.PHONY: preview-terraform-v1
preview-terraform-v1:
	@(cd $(TERRAFORM_V1_DIR); make preview)

.PHONY: preview-terraform
preview-terraform:
	@(cd $(TERRAFORM_V2_DIR); make preview)

.PHONY: preview-usacloud
preview-usacloud:
	@(cd $(USACLOUD_DIR); make preview)

.PHONY: preview-all
preview: preview-all
preview-all:
	@docker run -it --rm -p 8080:80 -v $$PWD:/usr/share/nginx/html

clean:
	@echo "cleaning in $(TOP_DIR)..."
	@(cd $(TOP_DIR); make clean)
	@echo "cleaning in $(TERRAFORM_V1_DIR)..."
	@(cd $(TERRAFORM_V1_DIR); make clean)
	@echo "cleaning in $(TERRAFORM_V2_DIR)..."
	@(cd $(TERRAFORM_V2_DIR); make clean)
	@echo "cleaning in $(USACLOUD_DIR)..."
	@(cd $(USACLOUD_DIR); make clean)
