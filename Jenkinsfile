pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/AbdullahNTG/pipeline_test.git'
      }
    }
    stage('Test & Build') {
      steps {
        sh 'mvn clean install'
      }
    }
    stage('deploy') {
      steps {
      	sh 'scp /var/jenkins_home/workspace/pipeline/target/spring-boot-docker.jar user01@192.168.56.101:/home/user01/pipeline_test'
      }
    }

  }
}
