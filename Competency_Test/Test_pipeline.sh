#!/bin/bash

set -e

########################################
# Configuration
########################################

API="http://localhost:8000"
USERNAME="your_username"
LLM_PROVIDER="google"

########################################
# Start Server
########################################

echo "Starting server..."

python3 -m uvicorn server:app --host 0.0.0.0 --port 8000 &
SERVER_PID=$!

trap "echo 'Stopping server'; kill $SERVER_PID" EXIT

########################################
# Wait for Server
########################################

echo "Waiting for server to start..."

until curl -s $API/docs > /dev/null; do
    sleep 2
done

echo "Server is ready."

########################################
# Video URL Lists
########################################

TAB_CONF_urls=(
"https://www.youtube.com/watch?v=Uc6pk60l4to"
"https://www.youtube.com/watch?v=aR4uoLRFu2g"
"https://www.youtube.com/watch?v=MtvZRltUMWU"
"https://www.youtube.com/watch?v=RXF5wE8LD0Y"
"https://www.youtube.com/watch?v=v2xjVAvcKc4"
"https://www.youtube.com/watch?v=EhJoJPf76Pw"
"https://www.youtube.com/watch?v=G6mWWNubtcE"
"https://www.youtube.com/watch?v=6-AU0Vpyzr0"
"https://www.youtube.com/watch?v=j_nIZXt9HLA"
)

THE_BITCOIN_CONF_urls=(
"https://www.youtube.com/watch?v=HGVc26A8w8E"
)

########################################
# Queue Function
########################################

queue_video() {

    local url=$1
    local loc=$2

    echo "Queueing video: $url"

    response=$(curl -s -X POST "$API/transcription/add_to_queue/" \
        -F "source=$url" \
        -F "loc=$loc" \
        -F "username=$USERNAME" \
        -F "smallestai=true" \
        -F "diarize=true" \
        -F "markdown=true" \
        -F "correct=true" \
        -F "summarize=true" \
        -F "llm_provider=$LLM_PROVIDER")

    if [[ $? -ne 0 ]]; then
        echo "Failed to queue: $url"
    else
        echo "Queued successfully"
    fi
}

########################################
# Queue Videos
########################################

echo "Queueing TABConf videos..."

for url in "${TAB_CONF_urls[@]}"; do
    queue_video "$url" "tabconf" &
done

echo "Queueing Bitcoin Conf videos..."

for url in "${THE_BITCOIN_CONF_urls[@]}"; do
    queue_video "$url" "the_bitcoin_conf" &
done

wait

echo "All videos queued."

########################################
# Start Transcription
########################################

echo "Starting transcription pipeline..."

curl -X POST "$API/transcription/start/"

########################################
# Poll Job Status
########################################

echo "Monitoring transcription progress..."

while true; do

    status=$(curl -s "$API/transcription/status" || echo "unknown")

    echo "Pipeline status: $status"

    if [[ "$status" == *"completed"* ]]; then
        echo "Transcription completed."
        break
    fi

    sleep 30

done

########################################
# Fetch Results
########################################

echo "Results should now be available in your local_models directory."

echo "Pipeline finished."