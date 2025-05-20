set -e

cd /home/Lenovo/UnitTesting_SVM/test
/usr/bin/cmake.exe --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
