FROM python:3-alpine as production

WORKDIR /app

COPY requirements.txt /tmp/
RUN pip install --upgrade pip && \
 pip install -r /tmp/requirements.txt

COPY src/ /app

CMD ["python", "main.py"]
