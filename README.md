# maven-profiles
Sample Java Webapp with properties from Maven Profiles

# Steps
## Scaffold
```
mvn archetype:generate -DgroupId=com.nivi -DartifactId=webapp -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false
```
## Build (default profile is "dev")
```
mvn clean package
```
## Build with profile (use the "prod" profile)
```
mvn clean package -P prod
```

# Docker Commands
## Scaffold
```
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -v "$PWD/.m2":/root/.m2 -w /usr/src/mymaven maven:3.3-jdk-8 mvn archetype:generate -DgroupId=com.nivi -DartifactId=webapp -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false
```
## Build (default profile is "dev")
```
docker run -it --rm --name my-maven-project -v "$PWD/webapp":/usr/src/mymaven/webapp -v "$PWD/.m2":/root/.m2 -w /usr/src/mymaven/webapp maven:3.3-jdk-8 mvn clean package
```
## Build with profile (use the "prod" profile)
```
docker run -it --rm --name my-maven-project -v "$PWD/webapp":/usr/src/mymaven/webapp -v "$PWD/.m2":/root/.m2 -w /usr/src/mymaven/webapp maven:3.3-jdk-8 mvn clean package -P prod
```
## Tomcat Webserver
```
docker rm -f mywebserver && docker run --name mywebserver --rm -d -p 8080:8080 -v $PWD/webapp/target/webapp.war:/usr/local/tomcat/webapps/webapp.war tomcat
```

# All Thanks To
https://stackoverflow.com/questions/12686465/how-to-use-property-file-in-jsp

https://www.petrikainulainen.net/programming/tips-and-tricks/creating-profile-specific-configuration-files-with-maven/

