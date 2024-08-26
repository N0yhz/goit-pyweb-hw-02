FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml poetry.lock* ./

COPY . .

RUN pip install -r requirements.txt

RUN pip install poetry

RUN poetry install

ENTRYPOINT ["poetry", "run", "python", "./main.py"]