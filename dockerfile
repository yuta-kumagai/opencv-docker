FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime


RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.9 python3.9-distutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1 && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1

RUN apt-get update && \
    apt-get install -y curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    rm get-pip.py && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip \
    yasm \
    pkg-config \
    libswscale-dev \
    libtbb2 \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libavformat-dev \
    libpq-dev \
    libxine2-dev \
    libglew-dev \
    libtiff5-dev \
    zlib1g-dev \
    libavcodec-dev \
    libavutil-dev \
    libpostproc-dev \
    libeigen3-dev \
    libgtk2.0-dev \
    python3-dev \
    python3-numpy \
    libgtk-3-dev \
    libgtkglext1-dev \
    libavresample-dev \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libdc1394-22-dev

WORKDIR /app
COPY opencv_contrib-4.5.3 /app/opencv_contrib-4.5.3
COPY opencv-4.5.3 /app/opencv-4.5.3
RUN mkdir /app/opencv-4.5.3/build

# RUN cd opencv-{$OPENCV_VERSION}/build && \
# cmake .. \
# -D CMAKE_CONFIGURATION_TYPES="Release" \
# -D CMAKE_BUILD_TYPE="Release" \
# -D WITH_CUDA=ON \
# -D OPENCV_DNN_CUDA=ON \
# -D CMAKE_INSTALL_PREFIX=/usr/local \
# -D CUDA_FAST_MATH=ON \
# -D ENABLE_FAST_MATH=ON \
# -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib-4.5.0/modules \
# -D INSTALL_TESTS=OFF \
# -D INSTALL_C_EXAMPLES=OFF \
# -D BUILD_EXAMPLES=OFF \
# -D BUILD_TESTS=OFF \
# -D BUILD_PERF_TESTS=OFF \
# -D BUILD_JPEG_TURBO_DISABLE=ON \
# -D WITH_PYTHON=ON \
# -D INSTALL_PYTHON_EXAMPLES=OFF \
# -D BUILD_opencv_python2=OFF \
# -D BUILD_opencv_python3=ON \
# -D WITH_CUBLAS=ON \
# -D WITH_OPENGL=ON \
# -D WITH_NVCUVID=ON \
# -D OPENCV_ENABLE_NONFREE=ON \
# -D OPENCV_PYTHON3_VERSION=3.9 \
# -D CPU_BASELINE="SSE3" \
# -D CUDA_GENERATION="Turing" \
# -D CUDA_ARCH_PTX=7.5 \
# -D BUILD_opencv_world=ON
