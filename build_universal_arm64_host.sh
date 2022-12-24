# TODO grab MacOSX11.3.sdk and put in /Library/Developer/CommandLineTools/SDKs
# TODO change to fork of qt5 with patches on the 5.15.2 branch
#!/usr/bin/env bash

export JOBS="-j$(sysctl -n hw.activecpu)"
#export SDKROOT="/Library/Developer/CommandLineTools/SDKs/MacOSX11.3.SDK

git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.15.2
./init-repository
cd ..
mkdir qt5-build-x86_64
cd qt5-build-x86_64
 ../qt5/configure -device-option QMAKE_APPLE_DEVICE_ARCHS=x86_64 -opensource -confirm-license -nomake examples -nomake tests -no-openssl -securetransport -skip qtwebengine
make $JOBS
make install
cd qttools
make $JOBS
make install
cd ..
cd qtmacextras
make $JOBS
make install
cd ..
cd ..
mkdir qt5-build-arm64
cd qt5-build-arm64
../qt5/configure QMAKE_APPLE_DEVICE_ARCHS=arm64 -opensource -confirm-license -nomake examples -nomake tests -no-openssl -securetransport -skip qtwebengine -skip qt3d
make $JOBS
make install 
cd qttools
make $JOBS
make install
cd ..
cd qtmacextras
make $JOBS
make install
cd ..
cd ..
wget https://raw.githubusercontent.com/crystalidea/macdeployqt-universal/main/bin/makeuniversal
chmod +x makeuniversal
./makeuniversal "/usr/local/Qt-5.15.2-universal" "/usr/local/Qt-5.15.2-64" "/usr/local/Qt-5.15.2"
