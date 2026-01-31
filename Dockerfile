FROM node:20-alpine AS base
WORKDIR /app

# Application port as build argument
ARG APP_PORT=3000
ENV PORT=${APP_PORT}

# Copy package files
COPY package*.json ./
RUN npm install --only=production

# Copy application code
COPY . .

# Expose application port
EXPOSE ${APP_PORT}

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
    CMD node healthcheck.js || exit 1

# Run application
CMD ["node", "index.js"]

