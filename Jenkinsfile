pipeline {
        agent any
    stages {
    
        stage('git clone') {
                steps {
                     git branch: 'main', credentialsId: 'jenkins', url: 'git@gitlab.com:Aguerbaoui/projet12.git'
            
            
                }
        
        }

        stage('Build') {
                steps {
                    {
                     //sh script: 'mvn clean package -Dmaven.test.skip=true'
                     sh 'python3 server.py'
                }
        }
     }
/*
          stage('Docker Build and Tag') {
           steps {
            sh 'docker build -t nadiaaguerbaoui1/tomcat-spring-image:latest .'
           
               }
            }



           stage('Publish image to Docker Hub') {
          
            steps {
                withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
                   
                   sh 'docker push nadiaaguerbaoui1/tomcat-spring-image:latest'
                   }
      
                  
          }
        }

        stage('Deploy to k8s cluster'){
            steps{

                 script{
                   // kubernetesDeploy (configs: 'dep.yaml', kubeconfigId: 'kubeconfig')
                    kubernetesDeploy configs: 'deploservice.yaml', kubeConfig: [path: ''], kubeconfigId: 'kubeconfig', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://']
                }

         }


     }   */

  
     

    } 

} 
