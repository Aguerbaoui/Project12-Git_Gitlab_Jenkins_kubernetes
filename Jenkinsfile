pipeline {
        agent any
    stages {
    
        stage('git clone') {
                steps {
                     git branch: 'master', credentialsId: 'jenkins', url: 'git@gitlab.com:Aguerbaoui/projet12.git'
            
                }
        
        }
          
        stage('Docker Build and Tag MySQL Image') {
              steps {
                 
                    dir('./database') {
                      
                       sh 'docker build -t nadiaaguerbaoui1/mysql-app-image:latest .'
                     }
                 
           
                    }
        }

        stage('Docker Build and Tag Flask Image') {
              steps {
                    sh 'docker build -t nadiaaguerbaoui1/flask-app-image:latest .'
           
                    }
            }
          
        stage('Publish images  to Docker Hub') {
          
            steps {
                withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
                   
                   sh 'docker push nadiaaguerbaoui1/flask-app-image:latest'
                   sh 'docker push nadiaaguerbaoui1/mysql-app-image:latest'
                   }    
          }
        }

      /*  stage('Deploy to k8s cluster'){
            steps{

                 script{
                    kubernetesDeploy configs: 'dep.yaml', kubeConfig: [path: ''], kubeconfigId: 'kubeconfig', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://']
                }
         }
     } */

    } 

} 
