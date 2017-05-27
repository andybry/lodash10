start: node_modules
	docker run --rm -v `pwd`:/code -w /code node:7.10-alpine node .

node_modules: package.json
	docker run --rm -v `pwd`:/code -w /code node:7.10-alpine yarn

build:
	docker build -t andybry/lodash10 .

push: build
	docker push andybry/lodash10