# angularJavaXss
 This project for testing Java API backend with AngualarJS frontend.
 
 The JAVA API is quick simple and still in development based on spring-boot.
 To create the JAVA API I used the tutorials here: https://spring.io/guides/gs/.
 
 In the AngularJS frontend I change things frequently so perhaps things are not working when you use this :-)
 
 To get this basic setup working follow the steps:
 Running API:
 1) Download Maven https://maven.apache.org/download.cgi
 2) Add maven/bin directory to your PATH variable;
 3) From the API directory run Maven command: mvn clean package -Dmaven.test.skip=true
 4) The JAR files is created in the target directory, run : java -jar {targetdir}/jarfile
 5) The API is listening on http://localhost:8080 (test with curl)
 6) I've added a origin header to call it from http://localhost:80
 
 Running Frontend (angular from cdn):
 1) Place webroot files in directory from with apache sees it as webroot e.g. (/var/www/html/)
 2) Browse to http://localhost
 
 I've tried to get XSS working, but was not succesfull yet!
 
