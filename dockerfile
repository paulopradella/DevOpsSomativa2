FROM node:14-alpine
RUN apk add --no-cache git
COPY . /app
WORKDIR /app
RUN npm install -g snyk
RUN snyk test --file=package.json --json > snyk-test-results.json
RUN curl -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" -d "chat_id=${TELEGRAM_CHAT_ID}&text=Snyk Security Test Results: $(cat snyk-test-results.json)"
CMD ["npm", "start"]
