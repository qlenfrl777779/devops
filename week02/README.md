# DevOps 2주차

## 2주차 - 실습 환경 구축과 버전 관리 기초

- 서버 / 베어메탈 / 하이퍼바이저 / 컨테이너 비교
- WSL2 + Ubuntu 설치 및 설정
- 파일, 디렉터리, 권한, 기본 명령어 등 다루기
- Git 커밋, 버전, 이동+비교, 브랜치
- GitHub에 공유 : 가입, 저장소 생성, 푸시, 레포 제출

서버는 하드웨어이며, 소프트웨어이다.


## 서버 운영 방법

1. 베어메탈 : PC 한 대에 OS 설치 후 여러 소프트웨어 운영
2. 하이퍼바이저 : PC 한 대에 여러 가상 머신
3. 컨테이너 : PC 한 대에 여러 컨테이너


## WSL2 설치 
- wsl -l -v                          설치된 배포판과 버전 확인
- wsl --install                      WSL + 기본 Ubuntu 설치
- wsl --list --online                설치 가능한 배포판 목록
- wsl --install -d Ubuntu-24.04      특정 버전 설치
- wsl --set-version Ubuntu-24.04 2   WSL 1이면 2로 변경
- wsl --set-default Ubuntu-24.04     기본 배포판 지정


## 기본 리눅스 명령어
- pwd                  현재 위치
- ls -l / ls -a        상세 목록 / 숨김 파일
- cd ~ / cd .. / cd -  홈 / 상위 / 직전 디렉터리
- mkdir, rmdir         디렉터리 생성, 삭제
- touch, cp, mv, rm    파일 생성, 복사, 이동(이름 변경), 삭제
- echo "..." > a.txt   덮어쓰기
- cat a.txt >> b.txt   이어 붙이기
- head, tail, less     앞부분, 뒷부분, 긴 파일 보기
- tail -f <로그>       로그 실시간 보기
- df -h, free -h       디스크, 메모리
- whoami, uname -a     사용자, 커널 정보
- history 지금까지 입력한 명령어
- !! 직전 명령 다시 실행
- !103 103번쨰 명령 실행

권한 수정 방법
chmod <권한> <파일이름>


|권한|문자 | 숫자 |
|---|---|---|
| 읽기 |r|4|
| 쓰기 |w|2|
| 실행 |x|1|

예 : 750 
소유자7(rwx), 그룹5(r-x), 기타0(---)


## 깃

- git config --global user.name "이름"
- git config --global user.email "이메일"

- cd ~/devops
- git init                         이 디렉터리를 Git 저장소로
- git status                       상태 확인
- git add .                        다음 커밋에 넣을 변경사항 선택 (staging)
- git commit -m "first commit"     하나의 버전(스냅샷)으로 저장
- git log --oneline                커밋 기록
- git switch -d <커밋해시>         과거 버전으로 이동
- git diff <해시1> <해시2>         두 버전 비교

## 깃허브 로그인
- gh auth login 깃허브 로그인
- git push 커밋 후 푸시
- gh auth logout 깃허브 로그아웃 
- gh auth status 확인
