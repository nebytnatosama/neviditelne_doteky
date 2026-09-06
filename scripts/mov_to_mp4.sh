for i in *.mov; do \
   ffmpeg -i "$i" \
       -vf "scale=1280:-2" \
       -c:v libx264 -crf 23 \
       -preset medium \
       -c:a aac -b:a 128k \
       "${i/mov/mp4}"; done
