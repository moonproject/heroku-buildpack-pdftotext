build: build-heroku-20

build-heroku-20:
	@echo "Building pdftotext in docker for heroku-20..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" heroku/heroku:20-build bash -c 'cd /buildpack; scripts/build_pdftotext /buildpack/bin/pdftotext-heroku-20'
	@echo ""
