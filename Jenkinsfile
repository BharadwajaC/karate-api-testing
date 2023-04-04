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
        stage('Build maven test inside a container'){
            steps{
                script{
                    sh 'docker --version'
                    sh 'docker run -i --name=mavenjdk11 maven/baseline:latest bash'
                    sh 'cd karate-api-testing'
                    sh 'mvn clean install'
                }
            }
        }
    }
}