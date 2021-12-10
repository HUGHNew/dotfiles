#!/bin/bash
# Dependencies: gnome-screenshot tesseract-orc imagemagick xclip
# may only works on Gnome

# reference : <https://blog.csdn.net/weixin_39949673/article/details/111116693>

# tmp file
src="/tmp/ocr_tmp"

# take a shot
gnome-screenshot -a -f $src.png

# increase the png which can increase the detection rate
mogrify -modulate 100,0 -resize 400% $src.png

# OCR by tesseract
# tesseract save the output to $outputbase.txt
tesseract $src.png $src &>/dev/null -l eng+chi_sim

#use sed to delete the blanks & get the text and copy to clipboard
cat $src.txt | sed 's/ //g' | xclip -sel clip
# rm the useless file
# rm $src.png $src

# notify U that this work is done
notify-send "OCR Done"
