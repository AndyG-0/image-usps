pipeline {
    agent any
    stages {
        stage('Create docker image') {
            steps {
                script {
                    echo 'Create Dockerfile ...'
                    sh 'docker build -t registry-192.168.1.38.nip.io/usps:latest .'
                }
            }
        }
        stage('Push docker image') {
            steps {
                script {
                    echo 'Push Docker Image ...'
                    sh 'docker push registry-192.168.1.38.nip.io/usps:latest'
                }
            }
        }

    }
    post {
        always {
            cleanWs()
        }
    }
}