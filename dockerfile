FROM python:3.8-slim-buster

WORKDIR src

COPY src/requirements.txt src/requirements.txt

RUN pip3 install -r src/requirements.txt

COPY . .

CMD [ "python3", "-m" , "get-secrets.py"]

