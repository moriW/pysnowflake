FROM python:alpine

WORKDIR /app

COPY requirements.txt .

RUN pip --no-cache-dir install -r requirements.txt

COPY . .

RUN python3 setup.py install

EXPOSE 80

ENTRYPOINT ["snowflake_start_server"]
