pipeline{
    agent any
    
    environment {     
    DOCKERHUB_CREDENTIALS= credentials('dockercredential')     
    } 
    
    stages{
        stage('Checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mask89/practice2.git']])
            }
        }
        
        stage('Login to Docker Hub'){      	
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'                		
	            echo 'Login Completed'      
                }           
        }   

        stage('Build image'){
            steps {
            sh 'whoami '
            sh 'docker build . -t $DOCKERHUB_CREDENTIALS_USR/suubuntu:0.6'
         }
        }

        stage('Push to Hub'){
            steps {
            sh 'docker push $DOCKERHUB_CREDENTIALS_USR/suubuntu:0.6'
            }

        }

    }
}
