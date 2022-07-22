build: build-heroku-22 build-heroku-20 build-heroku-18

build-heroku-22:
	@echo "Building pdftotext in docker for heroku-18..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-22" heroku/heroku:22-build bash -c 'cd /buildpack; scripts/build_pdftotext /buildpack/bin/pdftotext-heroku-22'
	@echo ""

build-heroku-20:
	@echo "Building pdftotext in docker for heroku-18..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" heroku/heroku:20-build bash -c 'cd /buildpack; scripts/build_pdftotext /buildpack/bin/pdftotext-heroku-20'
	@echo ""

build-heroku-18:
	@echo "Building pdftotext in docker for heroku-18..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-18" heroku/heroku:18-build bash -c 'cd /buildpack; scripts/build_pdftotext /buildpack/bin/pdftotext-heroku-18'
	@echo ""

shell:
	@echo "Opening heroku-20 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" -e "PORT=5000" heroku/heroku:20-build bash -c 'cd /buildpack; bash'
	@echo ""
