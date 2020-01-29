pipeline {

    agent any

    stages {

      stage('Build') {
          steps {
              sh '''
                  echo "primero"
                  echo $BUILD_ID
                  echo "segundo"
                  sudo echo $BUILD_ID
                 jenkins/scripts/mvn.sh mvn -B -DskipTests clean package
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
