
IN_IMAGE=/tmp/lockscreen.png
OUT_IMAGE=/tmp/lockscreen.png
ICON=/home/beh/Downloads/me.jpg
ICON_LOCK=/tmp/Lock-icon.jpg

scrot $IN_IMAGE
convert /home/beh/Downloads/me.png -scale 25% /tmp/Lock-icon.png


convert /tmp/Lock-icon.png \
        -gravity Center \
        \( -size 200x200 \
           xc:Black \
           -fill White \
           -draw 'circle 100 100 100 1' \
           -alpha Copy \
        \) -compose CopyOpacity -composite \
        -trim /tmp/circle.png

convert $IN_IMAGE -scale 10% -scale 1000% -fill black -colorize 25% $OUT_IMAGE
convert $OUT_IMAGE -gravity center -geometry +0+200 -composite $OUT_IMAGE
convert $OUT_IMAGE /tmp/circle.png -gravity center -composite -matte $OUT_IMAGE
i3lock -u -i $OUT_IMAGE
rm $OUT_IMAGE
rm /tmp/circle.png
