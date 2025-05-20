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
                echo '🔧 Cleaning and Starting CMake Build...'
                bat '''
                    del /F /Q CMakeCache.txt 2>nul
                    rmdir /S /Q build 2>nul
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
                bat 'build\\Debug\\test_app.exe'  // Change this path if needed
            }
        }
    }
}
