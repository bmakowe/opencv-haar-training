#!/bin/sh

cd /home/opencv-haar-classifier-training

# Index all positive and negative images
find ./positive_images -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" > positives.txt
find ./negative_images -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" > negatives.txt

# Create positive samples with the bin/createsamples.pl script and save them to the ./samples folder
perl bin/createsamples.pl positives.txt negatives.txt samples 1500 \
    "opencv_createsamples -bgcolor 0 -bgthresh 0 -maxxangle 1.1 \
    -maxyangle 1.1 maxzangle 0.5 -maxidev 40 -w 80 -h 40"

# Use tools/mergevec.py to merge the samples in ./samples into one file
python ./tools/mergevec.py -v samples/ -o samples.vec

# Start training the classifier with opencv_traincascade, which comes with OpenCV, and save the results to /classifier
opencv_traincascade -data classifier -vec samples.vec -bg negatives.txt \
    -numStages 20 -minHitRate 0.999 -maxFalseAlarmRate 0.5 -numPos 1000 \
    -numNeg 600 -w 80 -h 40 -mode ALL -precalcValBufSize 1024 \
    -precalcIdxBufSize 1024
