# 5주차 - Docker
- [v] `docker --version` 정상 출력
- [v] `docker run hello-world` 실행
- [v] `web`이라는 이름으로 nginx 컨테이너 실행
- [v] 브라우저 또는 `curl`로 `http://localhost:8080` 응답 확인
- [v] `docker ps`에서 실행 상태를 확인
- [v] 실습 결과를 `week05/README.md`에 기록
- [v] 수업에서 만든 컨테이너 정리
- [v] 혼자서 해보기 완료

 'curl'로 세 페이지를 확인한 결과를 'week05/README.md'에 추가
curl http://localhost:8091 > curl-result.txt
<h1>Welcome to nginx1</h1>

curl http://localhost:8092 > curl-result.txt
<h1>Welcome to nginx2</h1>

curl http://localhost:8093 > curl-result.txt
<h1>Welcome to nginx3</h1>
