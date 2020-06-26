 pipeline {
     agent any
    
     environment{
        PASS = credentials('registry-pass')  //dockerhub id
        DOCKER_ID = credentials('registry-id') //dockerhub pass
     }
     stages {
	 stage('Build'){
	     steps {
                 sh '''
                      ./pipeline/build/build.sh
                '''
             }
             
             post { 
              always { 
                 cleanWs()
              }
        }
        
    }
         

	stage('push'){
	    steps{
		    sh './pipeline/test/test.sh'
        }
        
        post { 
              always { 
                 cleanWs()
              }
        }
    }

    // stage('Deploy'){
    //     steps{
    //         script{
    //                 zip archive: true, dir: '', glob: '', zipFile: 'Dockerrun.zip'
    //          }
    //          }
    //      }
    // }
    }
 }
