pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Checkout') {
      steps {
        sh 'tar zxvf freeipa-4.3.3.tar.gz '
      }
    }
    stage('Compile') {
      steps {
        echo 'Fait'
      }
    }
    stage('Editeur') {
      steps {
        node(label: 'master')
        sh 'ls -lR'
        isUnix()
      }
    }
  }
}