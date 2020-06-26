 pipeline {
    agent any

    environment{
        PASS = credentials('registry-pass')  //dockerhub id
        DOCKER_ID = credentials('registry-id') //dockerhub pass
    }
    stages {
        stage('Build'){
            steps{
                sh '''
                    ./pipeline/build/build.sh
                    ls
                '''
            }
        }
         

        stage('push'){
            steps{
                sh '''
                ls
                echo "Current workspace is $WORKSPACE"
                ./pipeline/build/test.sh
                '''
            }
        }
        
        stage('deploy cf'){
            steps{
                sh '''
                ls
                echo "Current workspace is $WORKSPACE"
                ./pipeline/build/test.sh
                '''
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
