pipeline {

    agent any

    stages {

      stage('Build') {
          steps {
              sh '''
                 jenkins/scripts/mvn.sh mvn -B -DskipTests clean package
                 jenkins/scripts/build.sh
                '''
          }
          post {
              success {
                  archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
              }
          }
      }

      stage('Push') {
          steps {
            sh '''
              jenkins/scripts/push.sh
            '''
          }
      }


      stage('Deploy') {
          steps {
            sh '''
              jenkins/scripts/deploy.sh
            '''
          }
      }

      stage('Delete Registry') {
          steps {
            sh '''
              jenkins/scripts/registry-delete.sh
            '''
          }
      }

    }
}
