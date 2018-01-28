
# zip unix binaries
#mkdir -p ./bin/unix
#cp -v ./src/strayacoind ./bin/unix/
#cp -v ./src/strayacoin-cli ./bin/unix/
#cp -v ./src/strayacoin-tx ./bin/unix/
#cp -v ./src/test/test_strayacoin ./bin/unix/
#cp -v ./src/bench/bench_strayacoin ./bin/unix/
#cp -v ./src/qt/strayacoin-qt ./bin/unix
#cp -v ./src/qt/test/test_strayacoin-qt ./bin/unix
#cp -v ./strayacoin.conf ./bin/unix/
#zip ./bin/strayacoin-unix.zip ./bin/unix/*

ZIP_FILENAME=strayacoin-x86_64-win64-$(date +%Y%m%d).$(date +%H).zip
RELEASE_FOLDER=./bin/release

# zip win64 binaries
mkdir -p $RELEASE_FOLDER
cp -v ./src/strayacoin-cli.exe $RELEASE_FOLDER/
cp -v ./src/strayacoind.exe $RELEASE_FOLDER/
cp -v ./src/bench/bench_strayacoin.exe $RELEASE_FOLDER/
cp -v ./src/test/test_strayacoin.exe $RELEASE_FOLDER/
cp -v ./src/qt/strayacoin-qt.exe $RELEASE_FOLDER/
cp -v ./src/qt/test/test_strayacoin-qt.exe $RELEASE_FOLDER/
cp -v ./src/strayacoin-tx.exe $RELEASE_FOLDER/
cp -v ./strayacoin.conf $RELEASE_FOLDER/
cp -v "./bin/common files/README.txt" $RELEASE_FOLDER
cp -v "./bin/common files/libbitcoinconsensus-0.dll" $RELEASE_FOLDER
cp -v "./bin/common files/mine.bat" $RELEASE_FOLDER
cp -v "./bin/common files/mine.sh" $RELEASE_FOLDER

cd $RELEASE_FOLDER
zip $ZIP_FILENAME *



