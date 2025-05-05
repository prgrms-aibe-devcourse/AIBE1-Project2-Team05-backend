# 빌드 스테이지
FROM gradle:7.6.2-jdk17-alpine AS build
WORKDIR /app

# 환경 변수 설정
ARG SUPABASE_GPR_USER
ARG SUPABASE_GPR_TOKEN
ENV SUPABASE_GPR_USER=$SUPABASE_GPR_USER
ENV SUPABASE_GPR_TOKEN=$SUPABASE_GPR_TOKEN

# 의존성 캐시 활용
COPY build.gradle settings.gradle ./
COPY gradle ./gradle
COPY gradlew ./
RUN ./gradlew dependencies --no-daemon

# 전체 소스 코드 복사
COPY . .

# 애플리케이션 빌드
RUN ./gradlew bootJar --no-daemon

# 실행 스테이지
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# 타임존 설정
ENV TZ=Asia/Seoul
RUN apk add --no-cache tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

# JAR 복사
COPY --from=build /app/build/libs/*.jar app.jar

# dumb-init 설치
RUN apk add --no-cache dumb-init

# 포트 노출
EXPOSE 8080

# JVM 옵션
ENV JAVA_OPTS="-server -XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -Djava.security.egd=file:/dev/./urandom -Dfile.encoding=UTF-8"

# ENTRYPOINT & CMD (JSON 형식으로 개선)
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]
