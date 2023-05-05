pipeline {
    agent any
    
    environment {
        DOCKER_REGISTRY = 'https://index.docker.io/v1/'
        DOCKER_HUB_CREDENTIALS = credentials('docker-hub-credentials')
        DOCKER_IMAGE_NAME = 'saurabhbhai/$JOB_NAME'
        DOCKER_IMAGE_VERSION = 'v1.' + env.BUILD_ID
        DOCKER_IMAGE_LATEST_TAG = 'latest'
    }
    
    stages {
        stage('Pull source code from GitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/saurabhubbdn/'
            }
        }
        
        stage('Build Docker image') {
            steps {
                sh "docker image build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} ."
                sh "docker image tag ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_LATEST_TAG}"
            }
        }
        
        stage('Push Image to Docker Hub') {
            steps {
                withCredentials([DOCKER_HUB_CREDENTIALS]) {
                    sh "docker login -u ${DOCKER_HUB_CREDENTIALS_USR} -p ${DOCKER_HUB_CREDENTIALS_PSW}"
                    sh "docker image push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}"
                    sh "docker image push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_LATEST_TAG}"
                }
            }
        }
    }
}
