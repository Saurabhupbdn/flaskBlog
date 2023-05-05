 

pipeline {
    agent any
    stages {
    
         stage(' push image to hub'){
            steps{
               withCredentials([string(credentialsId: 'saurabhbhai', variable: 'dockerlogin')]) {
		       echo "your-password" | 'docker login -u saurabhbhai --password-stdin'

		       sh 'docker build -t saurabhbhai/project2:latest'
}
                   
                      sh 'docker push saurabhhbai/project2:latest'
                }
            }
        
  
         
    }
}
