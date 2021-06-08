#!/bin/bash

wget https://mind201910.blob.core.windows.net/release/MINDsmall_train.zip
mkdir -p mind-demo/train/
mv MINDsmall_train.zip mind-demo/train/MINDsmall_train.zip
unzip mind-demo/train/MINDsmall_train.zip -d mind-demo/train/

wget https://mind201910small.blob.core.windows.net/release/MINDsmall_dev.zip
mkdir -p mind-demo/valid/
mv MINDsmall_dev.zip mind-demo/valid/MINDsmall_dev.zip
unzip mind-demo/valid/MINDsmall_dev.zip -d mind-demo/valid

wget https://mind201910small.blob.core.windows.net/release/MINDlarge_train.zip
mkdir -p mind-large/train/
mv MINDlarge_train.zip mind-large/train/MINDlarge_train.zip
unzip mind-large/train/MINDlarge_train.zip -d mind-large/train/

wget https://mind201910small.blob.core.windows.net/release/MINDlarge_dev.zip
mkdir -p mind-large/valid/
mv MINDlarge_dev.zip mind-large/valid/MINDlarge_dev.zip
unzip mind-large/valid/MINDlarge_dev.zip -d mind-large/valid/

wget https://mind201910small.blob.core.windows.net/release/MINDlarge_test.zip
mkdir -p mind-large/test/
mv MINDlarge_test.zip mind-large/test/MINDlarge_test.zip
unzip mind-large/test/MINDlarge_test.zip -d mind-large/test