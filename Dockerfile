FROM aiogram/telegram-bot-api:latest

# The telegram-bot-api uses these environment variables by default if passed as flags
# but we will use a shell entrypoint to ensure Render's PORT is respected.
ENV PORT=8081

# Ensure the data directory exists
RUN mkdir -p /var/lib/telegram-bot-api && chmod 777 /var/lib/telegram-bot-api

EXPOSE 8081

# Entrypoint to run the server with necessary flags
# Using /bin/sh to allow environment variable expansion for the port
ENTRYPOINT ["/bin/sh", "-c", "exec /usr/local/bin/telegram-bot-api --local --stat --dir=/var/lib/telegram-bot-api --http-port=${PORT:-8081} --api-id=${TELEGRAM_API_ID} --api-hash=${TELEGRAM_API_HASH}"]
