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
                bat '''
                    if exist CMakeCache.txt del CMakeCache.txt
                    rmdir /S /Q build
                    mkdir build
                    cd build
                    cmake ..
                    cmake --build .
                '''
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running Tests...'
                bat 'build\\Debug\\test_app.exe' // adjust path if needed
            }
        }
    }
}
