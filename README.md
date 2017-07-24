# OpenCV HAAR classifier training

## Description


## Prerequisites
```
mkdir positive_images negative_images classifier
```

## Run
```
docker run \
  --detach \
  --name opencv-haar-classifier-training \
  --volume /home/bmakowe/positive_images:/positive_images  \
  --volume /home/bmakowe/negative_images:/negative_images \
  --volume /home/bmakowe/classifier:/classifier \
innoq/opencv-classifier-training
```

## Version
1.0
