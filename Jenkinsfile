pipeline{
    agent any
  
    stages{
        stage('Checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mask89/practice2.git']])
            }
        }
        
        stage('Build image'){
            steps {
            sh 'whoami '
            sh 'docker build . -t sunguyen88/suubuntu:1.2'
         }
        }
        
        stage('Push to Hub'){
            steps {
            sh 'docker push sunguyen88/suubuntu:1.2'
            }
                
        }
        
    }
    
}
