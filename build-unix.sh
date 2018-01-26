# get dependencies
apt-get update
apt-get install -y software-properties-common nano
add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev software-properties-common libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev

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
