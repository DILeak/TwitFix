FROM python:3.10-alpine
RUN mkdir /app
WORKDIR /app

EXPOSE 80

# Install reqs
COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY ./static /app/
COPY ./templates /app/
COPY config.json /app
COPY links.json twitfix.ini twitfix.py /app/

ENTRYPOINT [ "python", "twitfix.py" ]