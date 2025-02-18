# Stage 1: Build the Go application
FROM golang:1.21 AS builder

# Set working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum, then download dependencies
COPY go.mod /app/


RUN go mod download

# Copy the entire source code
COPY main.go /app/

# Build the Go application (Windows format)
RUN go build -o C:\app\godocker


# Expose the application port
EXPOSE 8080

# Run the application
CMD [ C:\App\godocker ]