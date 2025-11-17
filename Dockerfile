# 1. Escolha a imagem base (adaptada para Java 24)
FROM eclipse-temurin:24-jdk-alpine

# 2. Defina o argumento para o nome do arquivo JAR
ARG JAR_FILE=target/kubernetes-0.0.1-SNAPSHOT.jar

# 3. Copie o arquivo JAR do seu sistema de arquivos local (geralmente do diretório 'target' após a construção Maven)
COPY ${JAR_FILE} app.jar

# 4. Define o ponto de entrada (execução)
ENTRYPOINT ["java", "-jar", "/app.jar"]


# docker build -t kubernetes:0.0.1-SNAPSHOT .