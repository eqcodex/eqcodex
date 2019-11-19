.PHONY: build
build: 
	@(hugo -b https://eqcodex.com)
.PHONY: deploy
deploy: build
	@(firebase deploy)
.PHONY: scss
scss:
	@(docker run --rm -v $(PWD):$(PWD) -w $(PWD) node node scripts/font-generator/main.js)
	@(echo "/* This file is autogenerated via 'make scss'. DO NOT EDIT */" > static/css/xegony-awesome.css)
	@(docker run --rm -v $(PWD):$(PWD) -w $(PWD) jbergknoff/sass scss/app.scss >> static/css/xegony-awesome.css)
.PHONY: db
db: db-stop
ifneq ($(wildcard $(PWD)/db/data.*),)
	@(echo "could not find data directory, starting a fresh install)
	$(MAKE) db-reset
endif
	@(echo "starting eqcodex-db")
	@(docker run --rm -e MARIADB_ROOT_PASSWORD=rootpass -e MARIADB_DATABASE=eqemu -e MARIADB_USER=eqemu -e MARIADB_PASSWORD=eqemu -p 127.0.0.1:3306:3306 -v $(PWD)/db:/bitnami/mariadb --name eqcodex-db bitnami/mariadb:latest )
.PHONY: db-reset
db-reset: db-stop
	-(rm -rf db/data)
	-(rm -rf db/base)
	-(rm db/.user_scripts_initialized)
	@(echo "grabbing latest peq_beta")
	@(wget http://edit.peqtgc.com/weekly/peq_beta.zip)
	(mkdir -p db/base)
	(mv peq_beta.zip db/base)
	(cd db/base && unzip peq_beta.zip)
	@(echo "starting fresh install (this will take ~5 minutes to source")
	@(docker run --rm -e MARIADB_ROOT_PASSWORD=rootpass -e MARIADB_DATABASE=eqemu -e MARIADB_USER=eqemu -e MARIADB_PASSWORD=eqemu -p 127.0.0.1:3306:3306 -v $(PWD)/db:/bitnami/mariadb -v $(PWD)/db:/docker-entrypoint-initdb.d --name eqcodex-db bitnami/mariadb:latest)
.PHONY: db-quick-reset
db-quick-reset:
	-(rm db/.user_scripts_initialized)
	-(rm -rf db/data)	
	@(echo "starting fresh install (this will take ~5 minutes to source")
	@(docker run --rm -e MARIADB_ROOT_PASSWORD=rootpass -e MARIADB_DATABASE=eqemu -e MARIADB_USER=eqemu -e MARIADB_PASSWORD=eqemu -p 127.0.0.1:3306:3306 -v $(PWD)/db:/bitnami/mariadb -v $(PWD)/db:/docker-entrypoint-initdb.d --name eqcodex-db bitnami/mariadb:latest)
.PHONY: db-stop
db-stop:
	@(echo "stopping and removing old database (ignore errors)")
	@-(docker stop eqcodex-db)
	
