pipeline {

    agent any

    stages {

      stage('Enviroments') {
          steps {
            sh '''
              export TAG=$BUILD_ID
            '''
          }
      }

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
