FROM golang:1.6.2
 
RUN mkdir -p /app
ADD ./application /app


WORKDIR /app


EXPOSE 8080

CMD ["go","run","app.go"]




# docker build -t devopsdays .
# docker rmi $(docker images -q)

# docker run --rm --name devopsdays -t -p 8000:80 devopsdays
# docker rm -f $(docker ps -a -q)