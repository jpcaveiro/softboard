FROM python:3.6
WORKDIR /app/backend
COPY requirements.txt /app/backend
RUN pip3 install --upgrade pip -r requirements.txt
COPY . /app/backend
EXPOSE 8000
CMD python3 manage.py makemigrations
CMD python3 manage.py migrate
CMD python3 manage.py runserver 0.0.0.0:8000

FROM node:latest
WORKDIR /app/
COPY package*.json yarn.lock /app/
RUN yarn
COPY . /app/
EXPOSE 3000
RUN npm build