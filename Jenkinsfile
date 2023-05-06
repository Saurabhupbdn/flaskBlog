

pipeline {
    agent any
    stages{
//         stage('Build the docker image'){
//             steps{
//                 script{
//                      sh 'docker build -t saurabhbhai/project2 -f .'

//                 }
//         }
//         }
        stage('push the docker image to the dockerhub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerlogin')]) {
                              sh 'docker login -u saurabhbhai -p ${dockerlogin}'
                              sh 'docker build -t saurabhbhai/project2 -f .'
                      }
                      
                              sh 'docker push saurabhbhai/project2:latest '
                }
            }
        }
    }
}
