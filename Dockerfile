FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install poetry

COPY pyproject.toml poetry.lock* /app/

RUN poetry install --no-root

COPY . /app

CMD [ "poetry", "run", "python", "src/main.py" ]