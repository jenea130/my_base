ffmpeg -i input.mp4 -ss 00:00:40 -t 00:00:20 -c copy output.mp4

#увеличить звук в видео, volume=1 это 100%
ffmpeg -i input.mp4 -af "volume=2.0" output.mp4

Приведенная ниже командная строка поможет изменить разрешение видео с 1920 X 1080 пикселей до 640 X 360 пикселей.

ffmpeg -i video_1920.mp4 -vf scale=640:360 video_640.mp4 -hide_banner

если вы хотите изменить соотношение сторон с 16:9 на 4:3, команда будет выглядеть следующим образом.

ffmpeg -i video_1920.mp4 -vf scale=640:480,setdar=4:3 video_640x480.mp4
-hide_banner

ffmpeg -i filename -filter:v scale=720:-1 outputfile

---------------------------------------------

ffmpeg -i input.mp4 -ss 00:50:00 -codec copy -t 10 output.mp4

#вырезать фрагмент
ffmpeg -ss <начало> -t <продолжительность> -i input.avi -vcodec copy -acodec
copy output.avi

ffmpeg -ss <начало> -t <продолжительность> -i input.avi output.avi

-------------------------

#output 1920x1080
ffmpeg -i marina.mp4 2>&1 | grep -oP 'Stream .*, \K[0-9]+x[0-9]+'

-------------------------
