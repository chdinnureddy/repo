FROM tomcat:9.0
COPY   /var/lib/jenkins/workspace/docker-build-push-k8s/target/helloworldwar-3.5.war  /usr/local/tomcat/webapps/
