git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-bad
cd gst-plugins-bad

git checkout $(gst-launch-1.0 --version | grep version | tr -s ' ' '\n' | tail -1)
./autogen.sh --disable-gtk-doc --noconfigure
NVENCODE_CFLAGS="-I/usr/local/cuda/include" ./configure --with-cuda-prefix="/usr/local/cuda"

cd sys/nvenc
make
make install

cd ../..

cd sys/nvdec
make
make install