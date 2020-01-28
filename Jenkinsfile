pipeline {

    agent any

    stages {

        stage('Download') {
          steps {
            sh '''
              echo "Descargando"
              '''
          }
        }

        stage('Build') {
            steps {
                sh '''
			             ./jenkins/scripts/mvn.sh mvn -B -DskipTests clean package
			             ./jenkins/scripts/build.sh
                  '''
            }
            post {
                success {
                    archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
            }

        }
        stage('Test') {
            steps {
		          sh './jenkins/scripts/test.sh mvn test'
            }
            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Push') {
            steps {
		          ./jenkins/scripts/push.sh
            }
        }
        stage('Deploy') {
            steps {
       		   sh './jenkins/scripts/deploy.sh'
            }
        }
    }
}
