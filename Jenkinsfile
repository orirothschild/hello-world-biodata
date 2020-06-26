 pipeline {
    agent any

    environment{
        PASS = credentials('registry-pass')  //dockerhub id
        DOCKER_ID = credentials('registry-id') //dockerhub pass
    }
    stages {
        stage('Build'){
            steps{
                sh './pipeline/build/build.sh'
            }
        }
         

        stage('push'){
            steps{
                sh './pipeline/build/test.sh'
            }
        }
        
        stage('Deploy'){
            steps{
                sh "aws cloudformation create-stack --stack-name bio-data-stack --template-body file://cloudformationvpc.yml --region 'us-east-1' "
            }
            post { 
                always { 
                    cleanWs()
                }
            }
        }
    
    }
 }
