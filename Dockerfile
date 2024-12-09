FROM oven/bun:1.1.3-alpine

RUN apk add --no-cache nodejs npm git

WORKDIR /app

# Copy package files
COPY package.json bun.lockb ./

COPY . .

# Install dependencies including Next.js
RUN bun install

RUN bun next telemetry disable

