default: lint

.PHONY: build preview lint
build:
	@docker run -it --rm \
           -v $$PWD:/workdir \
           -p 80:80 \
           sacloud/mkdocs:latest build --clean --quiet

preview:
	@echo "servind docs on http://localhost:8080"
	@docker run -it --rm \
           -v $$PWD:/workdir \
           -p 8080:8080 \
           sacloud/mkdocs:latest serve --dev-addr=0.0.0.0:8080

lint:
	@docker run -it --rm -v $$PWD:/work -w /work sacloud/textlint:local .

clean:
	rm -rf site/*
