pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/H-test0/java.git'
      }
    }
    stage('Test & Build') {
      steps {
        sh 'mvn clean verify  sonar:sonar -Dsonar.projectKey=mypro  -Dsonar.projectName=mypro -Dsonar.host.url=http://192.168.56.122:9001 -Dsonar.token=sqp_4b62ca8ebd0a196ca5c693f6684f0c5da5858f7b'
      }
    }
    stage('deploy') {
      steps {
        sh 'scp /var/jenkins_home/workspace/pipeline/target/spring-boot-docker.jar /home/h/karam/java'
      }
    }

  }
}
