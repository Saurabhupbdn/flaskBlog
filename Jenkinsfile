 

pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
              checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Saurabhupbdn/flaskBlog.git'], []])            }
    }
         stage(' push image to hub'){
            steps{
               withCredentials([string(credentialsId: 'saurabhbhai', variable: 'dockerlogin')]) {
                   sh 'docker login -u "saurabhbhai" -p "dockerlogin" '
		   sh 'docker build -t saurabhbhai/project2:latest'
}
                   
                      sh 'docker push saurabhhbai/project2:latest'
                }
            }
        
  
         
    }
}
