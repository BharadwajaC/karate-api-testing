pipeline {
    agent any
    stages{
        stage('Build Docker image'){
            steps{
                script{
                    sh 'docker --version'
                    sh 'docker build -t maven/baseline .'
                }
            }
        }
        stage('Build maven'){
            steps{
                script{
                    sh 'docker run -i --name=mavenjdk11 maven/baseline:latest bash'
                    sh 'cd /home/karate/karate-api-testing'
                    sh 'mvn clean install'
                }
            }
        }
    }
}