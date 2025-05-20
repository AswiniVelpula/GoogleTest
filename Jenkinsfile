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
                    g++ -std=c++11 -I googletest/include -I googletest -pthread \
                    Example.cpp googletest/src/gtest_main.cc googletest/src/gtest-all.cc \
                    -o test_app
                '''
            }
        }

        stage('Test') {
            steps {
                sh './test_app --gtest_output=xml:report.xml'
            }
        }

        stage('Report') {
            steps {
                junit 'report.xml'
            }
        }
    }
}
