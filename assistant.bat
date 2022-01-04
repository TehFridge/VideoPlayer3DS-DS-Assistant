@echo off
cls
echo VideoPlayer3DS-DS-Assistant
echo Version 1.0
echo Press Space for Setup
pause>nul
goto setupmodel 

:setupmodel
set /p model="Which model do you Use? "
if %model%==3ds goto 3dssetup
if %model%==ds goto setupds

:3dssetup 
echo Codecs Available:
echo mpeg1video
echo mpeg2video
echo h263p
echo libx264
set /p codec="Which Codec do you want? (example: mpeg1video) "
echo Codec Modes Available:
echo Old Codecs
echo New Codecs
set /p mode="Which Codec Mode do you want? (example: new) "
if %mode%==new goto newcodec
if %mode%==old goto oldcodec

:oldcodec
echo Sound Codecs Available:
echo aac - Advanced Audio Coding
echo mp3 - MPEG Layer 3
echo %sound% - Copies the Existing Codec 
set /p sound="Which Sound Codec do you want? (example: aac) "
echo Resolutions Available:
echo 256x144 - 144p
echo 426x240 - 240p
echo 640x360 - 360p
echo 800x240 - 460p
echo 854x480 - 480p
set /p res="Which Resolution do you want? (example: 144p) "
if %res%==144p goto vid144
if %res%==240p goto vid240
if %res%==360p goto vid360
if %res%==460p goto vid460
if %res%==480p goto vid480

:newcodec
echo Sound Codecs Available:
echo aac - Advanced Audio Coding
echo mp3 - MPEG Layer 3
echo %sound% - Copies the Existing Codec 
set /p sound="Which Sound Codec do you want? (example: aac) "
echo Resolutions Available:
echo 256x144 - 144p
echo 426x240 - 240p
echo 640x360 - 360p
echo 800x240 - 460p
echo 854x480 - 480p
set /p res="Which Resolution do you want? (example: 144p) "
if %res%==144p goto vid144n
if %res%==240p goto vid240n
if %res%==360p goto vid360n
if %res%==460p goto vid460n
if %res%==480p goto vid480n


:vid144
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 256x144 -r 30 -q:v 15 %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 256x144 -r 30 -q:v 15 %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid144n
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 256x144 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 256x144 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid240
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 426x240 -r 30 -q:v 15 %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 426x240 -r 30 -q:v 15 %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid240n
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 426x240 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 426x240 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid360
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec mp3 -vcodec %codec% -s 640x360 -r 30 -q:v 15 %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec mp3 -vcodec %codec% -s 640x360 -r 30 -q:v 15 %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid360n
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec mp3 -vcodec %codec% -s 640x360 -r 30 -profile:v baseline %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec mp3 -vcodec %codec% -s 640x360 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid460
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 800x240 -r 30 -q:v 15 %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 800x240 -r 30 -q:v 15 %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid460n
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 800x240 -r 30 -profile:v baseline %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 800x240 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid480
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 854x480 -r 30 -q:v 15 %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 854x480 -r 30 -q:v 15 %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup

:vid480n
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
cls
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 854x480 -r 30 -profile:v baseline %output%
echo Press Space to convert
pause>nul
ffmpeg -i %input% -acodec %sound% -vcodec %codec% -s 854x480 -r 30 -preset fast -profile:v baseline %output%
echo Press Space to convert new file
pause>nul
goto 3dssetup




:setupds
echo Make sure the file is in the same folder as the program
echo You need FFMPEG installed for this to work!!!
set /p input="InputFile:(example video.mp4) "
set /p output="OutputFile:(example output.mp4) "
goto convertitr

:convertitrds
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -f mp4 -vf "fps=24000/1001, colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709, scale=256:144" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -q:v 2 -maxrate 500k -acodec aac -ar 32k -b:a 64000 -ac 1 -slices 1 -g 50 %output%
echo Press Space to convert
pause>nul
goto convertds

:convertds
ffmpeg -i %input% -f mp4 -vf "fps=24000/1001, colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709, scale=256:144" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -q:v 2 -maxrate 500k -acodec aac -ar 32k -b:a 64000 -ac 1 -slices 1 -g 50 %output%
echo Press Space to convert new file
pause>nul
goto setupds

