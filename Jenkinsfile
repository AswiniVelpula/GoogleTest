pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/AswiniVelpula/GoogleTest.git'
            }
        }
        stage('Build') {
            steps {
                sh '''
                    g++ -std=c++11 Example.cpp -lgtest -lgtest_main -pthread -o test_app
                '''
            }
        }
        stage('Test') {
            steps {
                sh './test_app'
            }
        }
    }
}

