FROM java:8-alpine
MAINTAINER Your Name <you@example.com>

ADD target/uberjar/fortune-cookie.jar /fortune-cookie/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/fortune-cookie/app.jar"]
