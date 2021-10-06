
# syntax=docker/dockerfile:1
FROM python:3.7-alpine
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install -r requirements.txt
ADD . /adil
CMD ["gunicorn", "-w 4", "-b", "0.0.0.0:8000", "main:app"]

