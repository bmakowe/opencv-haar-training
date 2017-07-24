#OpenCV HAAR classifier training

``
docker run \
  --detach \
  --volume positive_images:/positive_images \
  --volume negative_images:/negative_images \
  --volume classifier:/classifier \
innoq/opencv-haar-training
``
