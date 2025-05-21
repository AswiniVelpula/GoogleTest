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
                sh 'g++ -std=c++11 -isystem googletest/include -pthread *.cpp -lgtest -lgtest_main -o test_app'
            }
        }

        stage('Test') {
            steps {
                sh './test_app --gtest_output=xml:test_results.xml'
            }
        }
    }

    post {
        always {
            junit 'test_results.xml'
        }
    }
}
