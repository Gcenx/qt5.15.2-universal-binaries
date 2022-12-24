# TODO grab MacOSX11.0.sdk and put in /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs 
# TODO change to fork of qt5 with patches on the 5.15.2 branch
git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.15.2
./init-repository
cd ..
mkdir qt5-build-x86_64
cd qt5-build-x86_64
 ../qt5/configure -device-option QMAKE_APPLE_DEVICE_ARCHS=x86_64 -opensource -confirm-license -nomake examples -nomake tests -no-openssl -securetransport -prefix /usr/local/Qt-5.15.2-64 -skip qtwebengine
make -j8
sudo make install
cd qttools
make -j8
sudo make install
cd ..
cd qtmacextras
make -j8
sudo make install
cd ..
cd ..
mkdir qt5-build-arm64
cd qt5-build-arm64
../qt5/configure QMAKE_APPLE_DEVICE_ARCHS=arm64 -opensource -confirm-license -nomake examples -nomake tests -no-openssl -securetransport -skip qtwebengine -skip qt3d
make -j8
sudo make install 
cd qttools
make -j8
sudo make install
cd ..
cd qtmacextras
make -j8
sudo make install
cd ..
cd ..
wget https://raw.githubusercontent.com/crystalidea/macdeployqt-universal/main/bin/makeuniversal
chmod +x makeuniversal
sudo ./makeuniversal "/usr/local/Qt-5.15.2-universal" "/usr/local/Qt-5.15.2-64" "/usr/local/Qt-5.15.2"
