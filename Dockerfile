# 빌드 스테이지
FROM maven:3.8.6-openjdk-17-slim AS build
WORKDIR /app

# 필요한 파일만 복사하여 레이어 캐시 활용
COPY pom.xml .
# 의존성만 먼저 다운로드
RUN mvn dependency:go-offline

# 소스 코드 복사
COPY src ./src

# 애플리케이션 빌드
RUN mvn package -DskipTests

# 실행 스테이지
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# 타임존 설정
ENV TZ=Asia/Seoul
RUN apk add --no-cache tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

# 빌드 스테이지에서 생성된 JAR 파일 복사
COPY --from=build /app/target/*.jar app.jar

# 컨테이너가 종료될 때 적절히 처리되도록 SIGTERM 설정
RUN apk add --no-cache dumb-init

# 필요한 포트 노출 (기본 스프링 부트 포트)
EXPOSE 8080

# 메모리 설정 및 성능 최적화를 위한 JVM 옵션
ENV JAVA_OPTS="-server -XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -Djava.security.egd=file:/dev/./urandom -Dfile.encoding=UTF-8"

# dumb-init을 사용하여 시그널 처리 개선
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD java $JAVA_OPTS -jar /app/app.jar