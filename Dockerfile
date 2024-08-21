FROM python:3.12-slim-bookworm

#Poetry Config
ENV PATH="/root/.local/bin:$PATH"

# Install the package(s) in a single RUN command
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

RUN mkdir /data_funnel
WORKDIR data_funnel

COPY poetry.lock pyproject.toml /
RUN poetry install --no-dev -vvv
COPY . ./

CMD exec poetry run data_funnel/hello.py
#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 data_funnel.wsgi:app