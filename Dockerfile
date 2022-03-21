FROM python3:latest

RUN apt update && apt upgrade -y
RUN apt install nodejs npm -y

RUN npm install && node build && tsc --build

CMD ["tsc", "index.ts"]
