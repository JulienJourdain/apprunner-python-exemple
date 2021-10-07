FROM python:3.9-alpine

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV FLASK_APP=hello
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

EXPOSE 8080

ENTRYPOINT [ "flask", "run" ]
