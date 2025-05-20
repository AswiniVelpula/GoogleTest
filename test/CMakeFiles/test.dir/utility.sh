set -e

cd /home/Lenovo/UnitTesting_SVM/test
/usr/bin/ctest.exe --force-new-ctest-process $(ARGS)
