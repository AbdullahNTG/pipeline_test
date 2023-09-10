pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/H-test0/java.git'
      }
    }

    stage('Build') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}
