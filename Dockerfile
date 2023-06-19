FROM ubuntu:latest

RUN apt-get update && apt-get install -y netcat

CMD echo "Hello, sprints!" | nc -l -p 8080
