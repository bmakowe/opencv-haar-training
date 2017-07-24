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
  --volume positive_images:/positive_images \
  --volume negative_images:/negative_images \
  --volume classifier:/classifier \
innoq/opencv-haar-training
```

## Version
1.0
