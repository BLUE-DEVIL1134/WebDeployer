FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install nodejs npm git wget -y

COPY . .

RUN npm install -g typescript
RUN npm install && tsc --build && node build

CMD ["tsc", "index.ts"]
