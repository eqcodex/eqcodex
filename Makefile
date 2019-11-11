.PHONY: build
build: 
	@(hugo -b https://eqcodex.com)
.PHONY: deploy
deploy: build
	@(firebase deploy)
