# Starter Dockerfile - replace with your app build steps
FROM alpine:3.20

RUN adduser -D appuser
WORKDIR /app
COPY . /app

# Replace with your actual start command
CMD ["sh", "-c", "echo 'Container started'; sleep 3600"]
