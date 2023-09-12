# 検証済み環境
* Operating System: Ubuntu 20.04
* Compute Architecture: x86
* NVIDIA Driver: 535.54.03
* Docker version 24.0.5  
* docker-compose version 1.29.2  
# Docker build
`nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04`をベースのDockerイメージのビルドを行う。  
ubuntu環境でOpenCVをCUDA有効でCmakeを実行する。

```
docker build -t opencv_gpu .
```
# Dockerコンテナを起動
* GPU未使用
  ```
  docker run -it --rm opencv_gpu
  ```
* GPU使用
  ```
  docker run -it --gpus all --rm opencv_gpu
  ```
  
* HOST OSのディレクトをマウント
  ```
  docker run -it  -v $(pwd):/workspace --gpus all --rm opencv_gpu
  ```
# Dockerコンテナを起動（Docker-composeを使用）
```
docker-compose up -d
docker-compose exec opencv-gpu-container bash
```
