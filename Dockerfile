FROM golang:1.22-alpine AS builder

WORKDIR /app

COPY . .

RUN go mod download

RUN GOOS=linux go build -o ecs-echo ./cmd/ecs/main.go

FROM alpine:3.17

WORKDIR /app

COPY --from=builder /app/ecs-echo .

EXPOSE 8080

CMD ["./ecs-echo"]
