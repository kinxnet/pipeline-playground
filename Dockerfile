# 1. Go 공식 이미지를 사용합니다 (최신 버전).
FROM golang:1.21-alpine

# 2. 작업 디렉토리 생성 및 설정
WORKDIR /app

# 3. Go 모듈을 사용할 경우, go.mod와 go.sum 파일을 먼저 복사합니다.
COPY go.mod ./

# 4. 소스 코드 복사
COPY . .

# 5. 애플리케이션 빌드
RUN go build -o main .

# 6. 8080 포트 노출
EXPOSE 8080

# 7. 컨테이너 시작 시 실행할 명령
CMD ["./main"]

