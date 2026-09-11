# Telegram Bot API Server (Render Ready)

This repository contains a Dockerized version of the [Telegram Bot API](https://github.com/tdlib/telegram-bot-api) server, optimized for deployment on **Render**.

## Deployment on Render

1. Create a new **Web Service** on Render.
2. Connect this repository.
3. Choose **Docker** as the runtime.
4. Add the following **Environment Variables**:
   - `TELEGRAM_API_ID`: Your Telegram API ID from [my.telegram.org](https://my.telegram.org).
   - `TELEGRAM_API_HASH`: Your Telegram API Hash.
   - `PORT`: `8081` (Render will automatically detect this if you expose it in the Dockerfile).
5. **Persistence (Optional but recommended):**
   - Go to the **Disk** tab in your Render service settings.
   - Add a Disk with the Mount Path: `/var/lib/telegram-bot-api`.
   - This ensures your downloaded files and local data persist across restarts.

## Local Development

1. Copy `.env.example` to `.env` and fill in your credentials.
2. Run:
   ```bash
   docker-compose up -d
   ```
3. The API will be available at `http://localhost:8081`.
