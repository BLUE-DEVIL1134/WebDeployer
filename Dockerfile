FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install nodejs npm git wget -y

COPY . .

RUN npm install && node build && tsc --build

CMD ["tsc", "index.ts"]
