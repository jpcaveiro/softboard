FROM python:3.6 AS builder
WORKDIR /app/
COPY requirements.txt .
RUN pip3 install --upgrade pip -r requirements.txt
COPY . .
CMD [ "python3", "manage.py", "makemigrations" ]
CMD [ "python3", "manage.py", "migrate" ]
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ] 

FROM node:13.2.0
WORKDIR /app/
COPY --from=builder . .
COPY package.json .
COPY yarn.lock .

RUN npm install
COPY . .
EXPOSE 3000
CMD [ "nohup", "npm", "start", "&" ]
