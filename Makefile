install:
	pip install pytest
test:
	python -m pytest -vv test.py
all: install test