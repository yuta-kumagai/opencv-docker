cmake .. \
-D CMAKE_CONFIGURATION_TYPES="Release" \
-D CMAKE_BUILD_TYPE="Release" \
-D WITH_CUDA=ON \
-D OPENCV_DNN_CUDA=ON \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D CUDA_FAST_MATH=ON \
-D ENABLE_FAST_MATH=ON \
-D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib-4.5.0/modules \
-D INSTALL_TESTS=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D BUILD_EXAMPLES=OFF \
-D BUILD_TESTS=OFF \
-D BUILD_PERF_TESTS=OFF \
-D BUILD_JPEG_TURBO_DISABLE=ON \
-D WITH_PYTHON=ON \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D BUILD_opencv_python2=OFF \
-D BUILD_opencv_python3=ON \
-D WITH_CUBLAS=ON \
-D WITH_OPENGL=ON \
-D WITH_NVCUVID=ON \
-D OPENCV_ENABLE_NONFREE=ON \
-D OPENCV_PYTHON3_VERSION=3.9 \
-D CPU_BASELINE="SSE3" \
-D CUDA_GENERATION="Turing" \
-D CUDA_ARCH_PTX=7.5 \
-D BUILD_opencv_world=ON


    cmake \
        -DOPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib-${OPENCV_VERSION}/modules \
        -DWITH_CUDA=ON \
        -DCMAKE_BUILD_TYPE=RELEASE \
        # Install path will be /usr/local/lib (lib is implicit)
        -DCMAKE_INSTALL_PREFIX=/usr/local \
        ..