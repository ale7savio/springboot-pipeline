pipeline {

    agent any

    stages {
      /*
      stage('Build') {
          steps {
              sh '''
                 jenkins/scripts/mvn.sh mvn -B -DskipTests clean package
                 jenkins/scripts/build.sh
                '''
          }
      }
      */

      stage('Push') {
          steps {
            sh '''
              chmod +x jenkins/scripts/push.sh
              jenkins/scripts/push.sh
            '''
          }
      }

      /*
      stage('Deploy') {
          steps {
            sh '''
              chmod +x jenkins/scripts/deploy.sh
              jenkins/scripts/deploy.sh
            '''
          }
      }
      */

    }
}
