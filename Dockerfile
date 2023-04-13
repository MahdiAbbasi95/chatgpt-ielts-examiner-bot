FROM python:3-alpine as production

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

CMD ["python3", "main.py"]
