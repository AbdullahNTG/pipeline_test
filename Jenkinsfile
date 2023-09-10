pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/H-test0/java.git'
      }
    }
        withMaven(){
          sh 'mvn install --batch-mode -DskipTests verify org.sonarsource.scanner.maven:sonar-maven-plugin:3.6.0.1398:sonar -Dsonar.projectKey= myproject -Dsonar.host.url=http://192.168.56.122:9001
    stage('Build') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}
