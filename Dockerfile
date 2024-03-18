FROM golang:1.22.1-alpine3.19

WORKDIR /src

COPY ./src/go.* ./

COPY ./src/*.go ./

RUN go build -o ./

ENTRYPOINT ["./main"]
