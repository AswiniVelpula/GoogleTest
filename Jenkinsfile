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
                echo '🔧 Starting CMake Build...'
                sh '''
                    rm -rf build
                    mkdir -p build
                    cd build
                    cmake ..
                    make
                '''
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running Tests...'
                sh './build/test_app'
            }
        }
    }
}
