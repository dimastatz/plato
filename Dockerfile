# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

RUN black plato
RUN pylint --fail-under=10.0 plato
RUN pytest -v plato

ENTRYPOINT ["python3"]
CMD ["./plato/app.py" ]