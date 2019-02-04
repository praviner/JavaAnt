node {
   
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/praviner/JavaAnt'
   
   }
   
   stage('Build') {

       withAnt(installation: 'MyAnt') {
            sh "ant main"
        }

   }
   stage('Results') {

    }
}
