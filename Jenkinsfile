node
{
        stage('git checkout')
        {
            git 'https://github.com/chdinnureddy/repo.git'
        }
        stage('deploy')
        {
            def mvnhome = tool name: 'maven', type: 'maven'
            sh "${mvnhome}/bin/mvn clean package"
        }
        stage('Docker image buils and push')
        {
                docker.withRegistry('https://registry.hub.docker.com', 'docker_cred')
                 {
                    def customImage = docker.build("chdinnureddy/helloworld:v.1.0")
                    /* Push the container to the custom Registry */
                    customImage.push()
                 }
        }
}
