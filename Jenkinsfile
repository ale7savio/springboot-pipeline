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

        stage('Build') {
            steps {
                sh '''
			             jenkins/scripts/mvn.sh mvn -B -DskipTests clean package
			             jenkins/scripts/build.sh
                  '''
            }
        }
    }
}
