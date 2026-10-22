#!/bin/bash
# web 컨테이너를 항상 3개로 유지하는 감시 스크립트
cd "$(dirname "$0")" || exit 1
WANT=3

while true; do
  NOW=$(docker compose ps --status running -q web | wc -l)
  if [ "$NOW" -lt "$WANT" ]; then
    echo "$(date '+%F %T') web ${NOW}개 → ${WANT}개로 복구" | tee -a keep-web3.log
    docker compose up -d --scale web=$WANT
  fi
  sleep 10
done
