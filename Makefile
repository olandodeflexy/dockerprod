setup:
	python3 -m venv ~/.dockerproj
     
     
install: 
	pip install --upgrade pip &&\
	pip install  -r requirements.txt
    
lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py
   
 
all: 
	inatall lint test