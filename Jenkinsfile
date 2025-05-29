pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      agent any
      steps {
        echo 'I am a ${BUZZ_NAME}'
        echo 'Buzz Test'
        sh 'echo Edited Placeholder'
        sh './jenkins/build.sh'
        archiveArtifacts(artifacts: 'target/*.jar', fingerprint: true)
      }
    }

    stage('Fluffy Test') {
      steps {
        sh 'sleep 5'
        sh 'echo Success!'
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