tutorial:
	echo "Hello, World!"	

deps:
	pip install -r requirements.txt

format:
	black .
	isort .
	flake8 .


run:
	python -m flask run --host=0.0.0.0 --port=8080

build:
	docker build -t flask-app .

run-docker:
	docker run -p 8080:8080 flask-app

typecheck:
	mypy .
