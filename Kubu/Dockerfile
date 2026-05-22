# build stage
FROM python:3.12-slim AS builder

WORKDIR /app
COPY requirements.txt .

RUN pip install --prefix=/install -r requirements.txt

# runtime stage (small)
FROM python:3.12-slim

COPY --from=builder /install /usr/local
COPY . /app

WORKDIR /app

CMD ["python", "main.py"]
