// pipeline {
//     agent any
    
// //    // environment {
// //         DOCKER_REGISTRY = 'https://index.docker.io/v1/'
// //           DOCKER_HUB_CREDENTIALS = credentials('dockerhub')
// //         DOCKER_IMAGE_NAME = 'saurabhbhai/$JOB_NAME'
// //         DOCKER_IMAGE_VERSION = 'v1.' + 'env.BUILD_ID'
// //         DOCKER_IMAGE_LATEST_TAG = 'latest'
// //     }
    
//     stages {
//         stage('Pull source code from GitHub') {
//             steps {
//                 git branch: 'main', url: 'https://github.com/Saurabhupbdn/flaskBlog.git'
//             }
//         }
        
//         stage('Build Docker image') {
//             steps {
//                 sh "docker image build -t saurabhbhai/project3."
//         //        sh "docker image tag ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_LATEST_TAG}"
//             }
//         }
        
//         stage('Push Image to Docker Hub') {
//             steps {
//                 withCredentials([DOCKER_HUB_CREDENTIALS]) {
//                     sh "docker login -u saurabhbhai -p Anuragbhai"
//                     sh "docker image push saurabhbhai/project3"
                    
//                 }
//             }
//         }
//     }
// }

pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
              git branch: 'main', url: 'https://github.com/Saurabhupbdn/flaskBlog.git'
            }
    }
         stage(' push image to hub'){
            steps{
               withCredentials([string(credentialsId: 'saurabhbhai', variable: 'dockerlogin')]) {
                   sh 'docker login -u "saurabhbhai" -p "dockerlogin" '
		   sh 'docker build -t saurabhbhai/project2:latest'
}
                   
                      sh 'ocker push saurabhhbai/project2:latest'
                }
            }
        
  
         
    }
}
