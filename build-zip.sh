
# zip unix binaries
mkdir -p ./bin/unix
cp -v ./src/strayacoind ./bin/unix/
cp -v ./src/strayacoin-cli ./bin/unix/
cp -v ./src/strayacoin-tx ./bin/unix/
cp -v ./src/test/test_strayacoin ./bin/unix/
cp -v ./src/bench/bench_strayacoin ./bin/unix/
cp -v ./src/qt/strayacoin-qt ./bin/unix
cp -v ./src/qt/test/test_strayacoin-qt ./bin/unix
cp -v ./strayacoin.conf ./bin/unix/
zip ./bin/strayacoin-unix.zip ./bin/unix/*

# zip win64 binaries
mkdir -p ./bin/win64
cp -v ./src/strayacoin-cli.exe ./bin/win64/
cp -v ./src/strayacoind.exe ./bin/win64/
cp -v ./src/bench/bench_strayacoin.exe ./bin/win64/
cp -v ./src/test/test_strayacoin.exe ./bin/win64/
cp -v ./src/qt/strayacoin-qt.exe ./bin/win64/
cp -v ./src/qt/test/test_strayacoin-qt.exe ./bin/win64/
cp -v ./src/strayacoin-tx.exe ./bin/win64/
cp -v ./strayacoin.conf ./bin/win64/
zip ./bin/strayacoin-win64.zip ./bin/win64/*


