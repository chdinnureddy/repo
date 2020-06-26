node
{
    stages{
        stage('git checkout')
        {
            git 'https://github.com/chdinnureddy/repo.git'
        }
        stage('deploy')
        {
            def mvnhome = tool name: 'maven', type: 'maven'
            sh "${mvnhome}/bin/mvn clean package"
        }
    }
}
