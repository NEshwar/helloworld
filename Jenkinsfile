pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        echo 'Buzz Test'
        sh 'echo Edited Placeholder'
        sh './jenkins/build.sh'
        archiveArtifacts(artifacts: 'target/*.jar', fingerprint: true)
        sh 'echo "I am a ${BUZZ_NAME}"'
      }
    }

    stage('Fluffy Test') {
      parallel {
        stage('Fluffy Test') {
          steps {
            sh 'sleep 5'
            sh 'echo Success!'
          }
        }

        stage('') {
          steps {
            sh '''sleep 10
echo done'''
          }
        }

      }
    }

    stage('Fluffy Deploy') {
      steps {
        echo 'Placeholder'
      }
    }

  }
  environment {
    BUZZ_NAME = 'Worker Bee'
  }
}