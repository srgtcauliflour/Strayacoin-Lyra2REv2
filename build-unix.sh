# build
./autogen.sh
./configure
make
make install

# collect binaries
mkdir -p ./bin/linux
cp -v ./src/strayacoind ./bin/linux/
cp -v ./src/strayacoin-cli ./bin/linux/
cp -v ./src/strayacoin-tx ./bin/linux/
cp -v ./src/test/test_strayacoin ./bin/linux/
cp -v ./src/bench/bench_strayacoin ./bin/linux/
cp -v ./src/qt/strayacoin-qt ./bin/linux
cp -v ./src/qt/test/test_strayacoin-qt ./bin/linux
cp -v ./strayacoin.conf ./bin/linux/
