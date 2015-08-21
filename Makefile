.PHONY: build clean publish lint

build:
	python setup.py sdist

clean:
	rm -rf MANIFEST dist *.pyc

publish: clean build
	twine upload dist/with_aws_config-*.tar.gz

lint:
	pylint *.py
