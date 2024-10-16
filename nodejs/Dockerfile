# Node.js 베이스 이미지 사용
FROM node:18-alpine

# 작업 디렉터리 설정
WORKDIR /app

# package.json과 package-lock.json 복사 후 의존성 설치
COPY package*.json ./
RUN npm install

# 애플리케이션 코드 복사
COPY app/ /app

# 애플리케이션 실행
CMD ["npm", "start"]
