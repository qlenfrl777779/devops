# 4주차 - 자동화와 협업 / 네트워크

## 오늘 배운 내용
- grep, find, 파이프(`|`)로 파일과 내용 찾기
- 변수, 인자, 조건, 반복으로 백업 스크립트(`backup.sh`) 작성
- 브랜치 → PR → Merge, Conflict 해결
- IP, 포트, DNS 개념과 확인 명령어, 포트 충돌 해결

## 새로 배운 명령어
```bash
grep -n "ERROR" server.log      # 내용 찾기
find . -name "*.sh"             # 파일 찾기
ps aux | grep sleep / kill PID  # 프로세스 확인, 종료
tar -czf / tar -xzf             # 압축, 해제
gh pr create / gh pr merge --squash --delete-branch
ip addr / ping / dig / curl -I / ss -tlnp
python3 -m http.server 8080     # 간단한 웹 서버
```

## 실습
- `./backup.sh test`로 백업하고, 압축을 풀어 `diff`로 원본과 같은지 확인했다.
- 백업 결과물은 `.gitignore`로 Git에서 제외했다.
- main과 브랜치에서 같은 줄을 고쳐 Conflict를 만들고, 직접 골라서 해결했다.
- 같은 포트(8080)로 서버를 두 번 띄우면 `Address already in use` 오류가 난다.
