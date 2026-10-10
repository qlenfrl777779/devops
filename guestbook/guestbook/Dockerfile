# ---------------------------------------------------------------
# 학생 과제: 아래 각 줄이 무엇을 하는지 주석으로 설명을 달아보세요.
# ---------------------------------------------------------------

FROM python:3.12-slim 
# 기반 이미지, python 3.12-slim 리눅스 이미지에서 시작

# 작업 디렉터리를 /app으로 지정, 없으면 생성 
WORKDIR /app

# 라이브러리 목록만 먼저 복사함.
COPY requirements.txt .

# 라이브러리 설치, 빌드 시 실행
RUN pip install --no-cache-dir -r requirements.txt

# 나머지 소스 코드 복사
COPY . .

# appuser로 생성 후 전환
RUN useradd -m appuser
USER appuser

# 환경 변수 기본값을 이미지에
ENV APP_TITLE="InhaTC DevOps 구교현의 방명록" \
    THEME_COLOR="#F97316"

# 컨테이너 5000번으로 포트 번호 문서화
EXPOSE 5000

# 컨테이너 시작 시 실행
CMD ["python", "app.py"]
