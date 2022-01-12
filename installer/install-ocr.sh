#!/bin/bash
## install tesseract-ocr
sudo add-apt-repository ppa:alex-p/tesseract-ocr

sudo apt update

sudo apt install tesseract-ocr imagemagick gnome-screenshot xclip -y

wget https://github.com/tesseract-ocr/tessdata/raw/main/chi_sim.traineddata -O chi_sim.traineddata
sudo mv chi_sim.traineddata /usr/share/tesseract-ocr/4.00/tessdata/