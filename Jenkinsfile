node {
   
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      //git 'https://github.com/praviner/JavaAnt'
   
   }
   
   stage('Build') {

       //withAnt(installation: 'MyAnt') {
       //     sh "ant main"
         agent { 
	    
            dockerfile {filename 'Dockerfile'}
	  
	      }
	steps {
        	echo "Build Processes  Any assembly activities that chains source together, if doesnt apply please leave a 'not applicable' echo"
        	sh "java -version"
        	sh "ant build.xml"
   	}
   }

	
   stage('Results') {

    }
}
