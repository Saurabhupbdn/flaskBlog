

pipeline {
    agent any
    stages{
        stage('Build the docker image'){
            steps{
                script{
                     sh 'docker build -t saurabhbhai/project2 .'

                }
        }
        }
        stage('push the docker image to the dockerhub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerlogin')]) {
                              sh 'docker login -u saurabhbhai -p ${dockerlogin}'
                             
                      }
                      
                              sh 'docker push saurabhbhai/project2:latest '
                }
            }
        }
        stage('K8s deploy') {
            steps {
                kubeconfig(caCertificate: '/home/knoldus/.minikube/ca.crt', credentialsId: 'minikube-config', serverUrl: 'https://192.168.49.2:8443') {
                    sh 'kubectl create -f deploy.yml .'
                }
            }
        }
    }
}
