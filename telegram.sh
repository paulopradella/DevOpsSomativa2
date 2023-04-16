
BOT_URL="https://api.telegram.org/bot${6198287682:AAF2sf9Fek1yDr2s-GIWa-FwWO0EgAgqgK4}/sendMessage"
PARSE_MODE="Markdown"
echo "${CI_JOB_STATUS}"


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

curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID -d text="${MESSAGE}" -d parse_mode=${PARSE_MODE}


