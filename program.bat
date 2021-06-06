echo off
echo MPEG4 Nintendo DS Converter FFMPEG Assistant
echo Version 1.0
echo Press Space for Setup
pause >nul
goto setup

:setup
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
set /p "inputf=InputFile:(example video.mp4) "
set /p "outputf=OutputFile:(example output.mp4) "
goto itr

:itr
Is this right?
echo Input: %inputf%
echo Output: %outputf%
echo Command: ffmpeg -i %inputf% -f mp4 -vf "fps=24000/1001, colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709, scale=256:144" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -q:v 2 -maxrate 500k -acodec aac -ar 32k -b:a 64000 -ac 1 -slices 1 -g 50 %outputf%
echo Press Space to convert
goto convert

:convert:
ffmpeg -i %inputf% -f mp4 -vf "fps=24000/1001, colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709, scale=256:144" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -q:v 2 -maxrate 500k -acodec aac -ar 32k -b:a 64000 -ac 1 -slices 1 -g 50 %outputf%
echo Press Space to convert new file
pause >nul
goto setup
