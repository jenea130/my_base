

mogrify -format gif path/*.webp

convert name.webp name.gif

--------------------------------
ffmpeg -i input.mp4 output.gif

ffmpeg -i input.mp4 -ss 5.0 -t 2 trimmed.gif

-ss 5: extracts the video starting at the 5 second mark.
-t 2: sets the duration of the output video.

ffmpeg -i input.mp4 -loop 0 looped.gif

ffmpeg -i input.mp4 -filter_complex "fps=10, scale=-1:360" compressed.gif

