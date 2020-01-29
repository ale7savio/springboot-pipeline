pipeline {

    agent any

    stages {

      stage('Root') {
        steps {
          sh '''
            sudo su
          '''
        }
      }

      stage('Build') {
          steps {
              sh '''
                 echo whoami
                 jenkins/scripts/mvn.sh mvn -B -DskipTests clean package
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
