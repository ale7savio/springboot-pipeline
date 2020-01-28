pipeline {

    agent any

    stages {

        stage('Download') {
          steps {
            sh '''
              git clone https://github.com/ale7savio/springboot-pipeline
              '''
          }
        }
    }
}
