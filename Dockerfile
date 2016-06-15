FROM golang:1.6.2
 
RUN mkdir -p /app
ADD ./application /app


WORKDIR /app


EXPOSE 80

CMD ["go","run","app.go"]