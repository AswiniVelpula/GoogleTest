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
                sh 'g++ -std=c++11 -isystem googletest/include -pthread *.cpp -o test_app'
            }
        }

        
        stage('Run Tests') {
            steps {
                echo '🧪 Running unit tests...'
                sh '''
                    
                    test>ExampleTests.exe
                '''
            }
        }
    }
}
