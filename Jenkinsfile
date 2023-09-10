pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/H-test0/java.git'
      }
    }
        withMaven(){
          sh 'mvn clean verify sonar:sonar \
  -Dsonar.projectKey=mypro \
  -Dsonar.projectName='mypro' \
  -Dsonar.host.url=http://192.168.56.122:9001 \
  -Dsonar.token=sqp_4b62ca8ebd0a196ca5c693f6684f0c5da5858f7b'
    stage('Build') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}
