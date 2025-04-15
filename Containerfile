FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN bibliochain create-db
RUN bibliochain populate-db
RUN bibliochain add-user -u admin -p admin
EXPOSE 5000
CMD ["bibliochain", "run"]
