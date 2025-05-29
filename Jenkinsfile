pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      agent any
      steps {
        echo 'I am a ${BUZZ_NAME}'
        echo 'Buzz Test'
      }
    }

  }
  environment {
    BUZZ_NAME = 'Worker Bee'
  }
}