#first stage: Build
FROM node:18 AS builder

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the application (if you have a build step)
RUN npm run build

# Second stage: Create a distroless image
FROM gcr.io/distroless/nodejs:18

WORKDIR /app

# Copy the built application from the builder stage
COPY --from=builder /app .

# Set the entry point
CMD ["index.js"]

