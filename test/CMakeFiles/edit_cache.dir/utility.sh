set -e

cd /home/Lenovo/UnitTesting_SVM/test
/usr/bin/ccmake.exe -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
