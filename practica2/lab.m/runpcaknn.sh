#!/bin/bash

mkdir resultspcaknn

./miknn-pca.m ../data/expressionsTr.gz ../data/expressionsTe.gz 1 >resultspcaknn/1nn_expressions.out &
./miknn-pca.m ../data/expressionsTr.gz ../data/expressionsTe.gz 3 >resultspcaknn/3nn_expressions.out &
./miknn-pca.m ../data/expressionsTr.gz ../data/expressionsTe.gz 4 >resultspcaknn/4nn_expressions.out &
./miknn-pca.m ../data/expressionsTr.gz ../data/expressionsTe.gz 5 >resultspcaknn/5nn_expressions.out &
./miknn-pca.m ../data/expressionsTr.gz ../data/expressionsTe.gz 6 >resultspcaknn/6nn_expressions.out &

./miknn-pca.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 1 >resultspcaknn/1nn_gauss2D.out &
./miknn-pca.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 3 >resultspcaknn/3nn_gauss2D.out &
./miknn-pca.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 5 >resultspcaknn/5nn_gauss2D.out &
./miknn-pca.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 11 >resultspcaknn/11nn_gauss2D.out &
./miknn-pca.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 21 >resultspcaknn/21nn_gauss2D.out &
./miknn-pca.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 43 >resultspcaknn/43nn_gauss2D.out &

./miknn-pca.m ../data/genderTr.gz ../data/genderTe.gz 1 >resultspcaknn/1nn_gender.out &
./miknn-pca.m ../data/genderTr.gz ../data/genderTe.gz 3 >resultspcaknn/3nn_gender.out &

./miknn-pca.m ../data/irisTr.gz ../data/irisTe.gz 1 >resultspcaknn/1nn_iris.out &
./miknn-pca.m ../data/irisTr.gz ../data/irisTe.gz 3 >resultspcaknn/3nn_iris.out &
./miknn-pca.m ../data/irisTr.gz ../data/irisTe.gz 4 >resultspcaknn/4nn_iris.out &

./miknn-pca.m ../data/newsTr.gz ../data/newsTe.gz 1 >resultspcaknn/1nn_news.out &
./miknn-pca.m ../data/newsTr.gz ../data/newsTe.gz 3 >resultspcaknn/3nn_news.out &
./miknn-pca.m ../data/newsTr.gz ../data/newsTe.gz 5 >resultspcaknn/5nn_news.out &
./miknn-pca.m ../data/newsTr.gz ../data/newsTe.gz 9 >resultspcaknn/9nn_news.out &
./miknn-pca.m ../data/newsTr.gz ../data/newsTe.gz 15 >resultspcaknn/15nn_news.out &
./miknn-pca.m ../data/newsTr.gz ../data/newsTe.gz 21 >resultspcaknn/21nn_news.out &

./miknn-pca.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 1 >resultspcaknn/1nn_ocr20x20.out &
./miknn-pca.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 3 >resultspcaknn/3nn_ocr20x20.out &
./miknn-pca.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 5 >resultspcaknn/5nn_ocr20x20.out &
./miknn-pca.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 11 >resultspcaknn/11nn_ocr20x20.out &

./miknn-pca.m ../data/videosTr.gz ../data/videosTe.gz 1 >resultspcaknn/1nn_videos.out &
./miknn-pca.m ../data/videosTr.gz ../data/videosTe.gz 3 >resultspcaknn/3nn_videos.out &
