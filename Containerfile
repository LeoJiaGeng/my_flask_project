FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN my_flask_project create-db
RUN my_flask_project populate-db
RUN my_flask_project add-user -u admin -p admin
EXPOSE 5000
CMD ["my_flask_project", "run"]
