FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install nodejs npm git wget -y

COPY . .

RUN npm install -g typescript debug
RUN npm install --include=dev && tsc --build

CMD ["node", "build"]
