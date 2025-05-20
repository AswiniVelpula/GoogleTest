pipeline {
    agent any

 

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/AswiniVelpula/GoogleTest.git', branch: 'main'
            }
        }

 

        stage('Build') {
            steps {
                echo '🔧 Starting CMake Build...'

 

                // Run CMake and Make commands
                sh '''
                    rm -rf build
                    mkdir -p build
                    cd build
                    cmake ..
                    make
                '''
            }
        }
    }
}
