pipeline {

    agent any

    environment {
      TAG = 1
    }

    stages {

      stage('Build') {
          steps {
              sh '''
                 jenkins/scripts/build.sh
                '''
          }
      }
      /*
      stage('Push') {
          steps {
            sh 'jenkins/scripts/push.sh'
          }
      }
      */

      /*
      stage('Deploy') {
          steps {
           sh 'jenkins/scripts/deploy.sh'
          }
      }
      */

    }
}
