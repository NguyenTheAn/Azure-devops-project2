install:
	pip install --upgrade pip && pip install -r requirements.txt
test:
	python -m pytest -vv test.py
lint:
	python -m pylint --disable=R,C test.py

all: install lint test
