# Java 베이스 이미지 사용
FROM eclipse-temurin:17-jdk-alpine

# 작업 디렉터리 설정
WORKDIR /app

# Maven 빌드용 의존성 복사
COPY pom.xml .
RUN mvn dependency:go-offline -B

# 소스 코드 복사 및 빌드
COPY src/ /app/src
RUN mvn package -DskipTests

# 생성된 JAR 파일 실행
CMD ["java", "-jar", "target/cloudpipeline-0.0.1-SNAPSHOT.jar"]
