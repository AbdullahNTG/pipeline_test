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
        sh 'mvn clean install'
      }
    }
    stage('deploy') {
      steps {
        sh 'scp /var/jenkins_home/workspace/pipeline/target/spring-boot-docker.jar oc@192.168.50.17:/home/oc/oc/crc-linux-2.24.1-amd64/Docker'
      }
    }

  }
}
