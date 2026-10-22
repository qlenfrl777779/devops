# 3주차 - 셸 스크립팅

## 오늘 배운 내용
- Ollama로 로컬 AI 모델(qwen3:0.6b)을 실행하고, `chat.py`로 브라우저에서 대화
- 반복하는 명령을 셸 스크립트로 만들어 자동화
- shebang, 실행 권한, 환경 변수, 조건문

## 작성한 스크립트 (`qwen-web/start.sh`)
```bash
#!/bin/bash
cd "$(dirname "$0")" || exit 1
exec python3 chat.py
```
- `#!/bin/bash`: bash로 실행하라는 표시
- `cd "$(dirname "$0")"`: 어디서 실행해도 스크립트가 있는 폴더로 이동
- `|| exit 1`: 실패하면 종료
- `exec`: 현재 셸을 python으로 바꿔서 실행

## 새로 배운 명령어
```bash
chmod u+x start.sh        # 실행 권한 주기
export WEB_PORT="8080"    # 환경 변수
cat > 파일 << 'EOF'       # 여러 줄을 파일로 저장 (heredoc)
command -v python3        # 프로그램이 있는지 확인
echo $?                   # 직전 명령 결과 (0 = 성공)
```
