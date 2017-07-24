![innoQ Deutschland GmbH](https://github.com/innoq/innoq-styles/blob/master/images/logo_172%402x.png "")
# OpenCV HAAR classifier training


## Description
A cascade classifier basically tells OpenCV what to look for in images. There are a lot of cascade classifiers floating around on the internet and you can easily find a different one and use it. But most of them are for recognizing faces, eyes, ears and mouths though and it would be great if we could tell OpenCV to recognize an object of our choice. Therefor i created an docker image which works with scripts from Thorsten Ball [mrnugget/opencv-haar-classifier-training](https://github.com/mrnugget/opencv-haar-classifier-training) to generate your classifier.

At the end of each stage the classifier is saved to a file and the process can be stopped and restarted.
When the process is finished we’ll find a file called classifier.xml in the classifier directory. 


## Prerequisites
```
mkdir positive_images negative_images classifier
```


## Run
```
docker run \
  --detach \
  --name opencv-haar-classifier-training \
  --volume <full_path_to>/positive_images:/positive_images  \
  --volume <full_path_to>/negative_images:/negative_images \
  --volume <full_path_to>/classifier:/classifier \
innoq/opencv-classifier-training
```


## Additional informations
[Train your own OpenCV HAAR classifier](http://coding-robin.de/2013/07/22/train-your-own-opencv-haar-classifier.html)

## Version
1.0
