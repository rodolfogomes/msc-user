# Usando uma imagem base oficial do OpenJDK com Java 17
FROM eclipse-temurin:17-jre-alpine

# Definindo o diretório de trabalho no contêiner
WORKDIR /app

# Copiando o arquivo JAR para o diretório de trabalho no contêiner
COPY target/*.jar /app/msc-user.jar

# Expondo a porta que a aplicação irá utilizar
EXPOSE 8080

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "/app/msc-user.jar"]
