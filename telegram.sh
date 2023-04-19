
#!/bin/bash

MESSAGE="
-------------------------------------
Gitlab build * ${CI_JOB_STATUS}!*
\`Repository:  ${CI_PROJECT_DIR}\`
\`Branch:      ${CI_COMMIT_BRANCH}\`
*Commit Msg:*
${CI_COMMIT_MESSAGE}
)
--------------------------------------
"

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d chat_id="${TELEGRAM_CHAT_ID}" \
    -d text="$MESSAGE" \
    -d parse_mode="Markdown"
