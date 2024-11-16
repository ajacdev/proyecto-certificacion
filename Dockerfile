# Usa una imagen base de Java
FROM openjdk:8-jdk-alpine

# Copia el archivo JAR compilado al contenedor
COPY target/proyecto-final-0.0.1-SNAPSHOT.jar /app/proyecto-certificacion.jar

# Define el comando que ejecutará la aplicación
ENTRYPOINT ["java", "-jar", "/app/proyecto-certificacion.jar"]

# Expone el puerto en el que la aplicación estará escuchando
EXPOSE 8080