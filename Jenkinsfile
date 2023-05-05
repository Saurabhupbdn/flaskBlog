 

pipeline {
    agent any
    stages {
	    
	 stage('Build image') {
            steps {
                 sh 'docker build -t saurabhbhai/project2:latest'
            }
    
	 stage('git clone') {
            steps {
              git branch: 'main', url: 'https://github.com/Saurabhupbdn/flaskBlog.git'
            }
    }    
	 
         stage(' push image to hub'){
            steps{
		    script{
		    withCredentials([string(credentialsId: 'saurabhbhai', variable: 'dockerlogin')]) {
			    sh 'docker login -u saurabhbhai -p${dockerlogin}'


		       
		    }
}
                   
                      sh 'docker push saurabhhbai/project2:latest'
                }
            }
        
  
         
    }
}
