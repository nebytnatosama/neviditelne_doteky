for i in *.mp4; do \
    ffmpeg -i "$i" \
        -c:v libx264 -crf 23 \
        -g 30 -keyint_min 30 \
        -c:a aac -b:a 128k \
        "$i"; done