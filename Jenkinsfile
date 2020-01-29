pipeline {

    agent any

    stages {

      stage('Build') {
          steps {
              sh '''
                 sudo jenkins/scripts/build.sh
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
