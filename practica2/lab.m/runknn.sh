#!/bin/bash

mkdir results

./miknn.m ../data/expressionsTr.gz ../data/expressionsTe.gz 1 >results/1nn_expressions.out &
./miknn.m ../data/expressionsTr.gz ../data/expressionsTe.gz 3 >results/3nn_expressions.out &
./miknn.m ../data/expressionsTr.gz ../data/expressionsTe.gz 4 >results/4nn_expressions.out &
./miknn.m ../data/expressionsTr.gz ../data/expressionsTe.gz 5 >results/5nn_expressions.out &
./miknn.m ../data/expressionsTr.gz ../data/expressionsTe.gz 6 >results/6nn_expressions.out &

./miknn.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 1 >results/1nn_gauss2D.out &
./miknn.m ../data/gauss2DTr.gz ../data/gauss2DTe.gz 3 >results/3nn_gauss2D.out &

./miknn.m ../data/genderTr.gz ../data/genderTe.gz 1 >results/1nn_gender.out &
./miknn.m ../data/genderTr.gz ../data/genderTe.gz 3 >results/3nn_gender.out &

./miknn.m ../data/irisTr.gz ../data/irisTe.gz 1 >results/1nn_iris.out &
./miknn.m ../data/irisTr.gz ../data/irisTe.gz 3 >results/3nn_iris.out &
./miknn.m ../data/irisTr.gz ../data/irisTe.gz 4 >results/4nn_iris.out &

./miknn.m ../data/newsTr.gz ../data/newsTe.gz 1 >results/1nn_news.out &
./miknn.m ../data/newsTr.gz ../data/newsTe.gz 3 >results/3nn_news.out &
./miknn.m ../data/newsTr.gz ../data/newsTe.gz 5 >results/5nn_news.out &
./miknn.m ../data/newsTr.gz ../data/newsTe.gz 9 >results/9nn_news.out &
./miknn.m ../data/newsTr.gz ../data/newsTe.gz 15 >results/15nn_news.out &
./miknn.m ../data/newsTr.gz ../data/newsTe.gz 21 >results/21nn_news.out &

./miknn.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 1 >results/1nn_ocr20x20.out &
./miknn.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 3 >results/3nn_ocr20x20.out &
./miknn.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 5 >results/5nn_ocr20x20.out &
./miknn.m ../data/ocr20x20Tr.gz ../data/ocr20x20Te.gz 11 >results/11nn_ocr20x20.out &

./miknn.m ../data/videosTr.gz ../data/videosTe.gz 1 >results/1nn_videos.out &
./miknn.m ../data/videosTr.gz ../data/videosTe.gz 3 >results/3nn_videos.out &
