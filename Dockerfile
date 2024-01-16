FROM maven:3.9.6-amazoncorretto-11 as maven

COPY pom.xml pom.xml
RUN mvn package

FROM bitnami/kafka:3.6.1

COPY --from=maven /libs/connectors/ /opt/bitnami/kafka/libs/connectors/
COPY --from=maven /libs/jdbc-drivers/ opt/bitnami/kafka/libs/
