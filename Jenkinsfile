pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh "ant main"
            }
        }
    }
}
