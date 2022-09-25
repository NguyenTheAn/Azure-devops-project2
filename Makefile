setup:
	python3 -m venv ~/.udacity-devops

install:
	python -m venv azuredevops2
        source azuredevops2/bin/activate
        python -m pip install --upgrade pip
        pip install setup
        pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	python -m pylint --disable=R,C,W1203 app.py

all: install lint test
