pipeline {

    agent any

    stages {

      stage('Enviroments') {
          steps {
            sh '''
              export TAG = $BUILD_ID
            '''
          }
      }

      stage('Build') {
          steps {
              sh '''
                  echo "primero"
                  echo $TAG
                  echo "segundo"
                  sudo echo $TAG
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
