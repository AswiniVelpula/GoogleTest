pipeline {
    agent any  // Run this pipeline on any available Jenkins agent

    stages {
        stage('Checkout') {
            steps {
                // Get code from your GitHub repo
                git 'https://github.com/AswiniVelpula/GoogleTest.git'
            }
        }

        stage('Build') {
            steps {
                // Compile your C++ code with g++
                // Adjust flags and file names as per your project
                sh 'g++ -std=c++11 -isystem googletest/include -pthread *.cpp -o test_app'
            }
        }

        stage('Test') {
            steps {
                // Run the compiled test binary to execute tests
                sh './test_app'
            }
        }
    }
}

