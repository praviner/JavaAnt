pipeline {
          agent { //here we select only docker build agents
            docker {
                image 'webratio/ant:latest' //container will start from this image
            }
        }  

options {
    buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10', artifactNumToKeepStr: '10'))
    }
    
    stages{ // The content in this Jenkinsfile has the targeted keywords we will use in automation to track stages for dashboarding.
          // Please insure to at least leave these keywords inside the "stage" in your description of the activity to help keep clean
          // our automation processes
	 stage ('Initialize') {
            steps {
              echo "Initialize"
            }
        }      
    }
    
    
    
} //pipeline
