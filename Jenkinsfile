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
            sh 'docker build . -t sunguyen88/suubuntu:0.1'
         }
        }
        
        stage('Push to Hub'){
            steps {
            sh 'docker push sunguyen88/suubuntu:0.1'
            }
                
        }
//Stop existing docker container for clean up
	stage('Stop existing container'){
		stpes{
			sh 'docker ps -f name=suubuntu -q | xargs --no-run-if-empty docker container stop'
			sh 'docker container ls -a -f name=suubuntu -q | xargs -r docker container rm'
		}
    	}
// Run docker container on local
	stage(''){
		steps{
			script{
				docker run -d -p 8181:80 -rm --name suubuntu --it sunguyen88/suubuntu:0.1 /bin/bash
			}
		}
	}
    
	}
}
