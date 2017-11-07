#!/bin/bash

./nn.m expressionsTr.gz expressionsTe.gz >1nn_expressions.out &

./nn.m gauss2DTr.gz gauss2DTe.gz >1nn_gauss2D.out &

./nn.m genderTr.gz genderTe.gz >1nn_gender.out &

./nn.m irisTr.gz irisTe.gz >1nn_iris.out &

./nn.m newsTr.gz newsTe.gz >1nn_news.out &

./nn.m ocr20x20Tr.gz ocr20x20Te.gz >1nn_ocr20x20.out &

./nn.m videosTr.gz videosTe.gz >1nn_videos.out &
