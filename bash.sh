git clone https://github.com/IntelRealSense/librealsense.git
cd ~/librealsense

# Build with Python bindings
mkdir build && cd build
cmake .. -DBUILD_PYTHON_BINDINGS:bool=true
make -j$(nproc)
sudo make install
