pipeline {
  agent any
  stages {
    stage('Docker Build') {
      steps {
        sh 'docker build -t hello-world:latest .'
      }
    }

    stage('Test if there were updates in docker') {
      steps {
        sh 'docker images hello-world:latest | grep seconds & echo \'Success\' || echo \'Build Without Changes/unsuccessfull\' & exit 1'
      }
    }

  }
}