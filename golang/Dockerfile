# Go 베이스 이미지 사용
FROM golang:1.20-alpine AS builder

# 작업 디렉터리 설정
WORKDIR /app

# 모듈 파일 복사 및 의존성 다운로드
COPY go.mod .
RUN go mod download

# 소스 코드 복사 및 빌드
COPY app/ .
RUN go build -o main .

# 경량화된 이미지로 복사
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/main .

# 서버 실행
CMD ["./main"]
