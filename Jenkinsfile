pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
          powershell './jenkins/build.sh'
        archiveArtifacts(artifacts: 'target/*.jar', fingerprint: true)
      }
    }
        stage('Buzz Test') {
      steps {
        powershell './jenkins/test-all.sh'
      }
    }
  }
}
