@echo off
cls
echo VideoPlayer3DS-DS-Assistant
echo Version 1.x
goto checkFFMPEG 

:checkFFMPEG
echo Checking if FFMPEG is present...
where /q ffmpeg
if ERRORLEVEL 1 (
    echo FFMPEG not found! Please install FFMPEG and try again.
    exit /B
) else (
    echo FFMPEG found!
    echo Press any key to continue...
    pause>nul
    goto setupmodel
)

:setupmodel
echo Models Available:
echo 3ds
echo ds
set /p model="Select a model to convert for (example: 3ds) : "
if %model%==3ds goto 3dssetup
if %model%==ds goto setupds

:3dssetup 
echo Codecs Available:
echo mpeg1video
echo mpeg2video
echo h263p
echo libx264
set /p codec="Select a codec (example: mpeg1video) : "
echo Codec Modes Available:
echo old - Old Codecs
echo new - New Codecs
set /p mode="Choose a codec mode (example: new) : "
if %mode%==new goto newcodec
if %mode%==old goto oldcodec

:oldcodec
echo Sound Codecs Available:
echo aac - Advanced Audio Coding
echo mp3 - MPEG Layer 3
echo %sound% - Copies the Existing Codec 
set /p sound="Select a sound codec (example: aac) : "
echo Resolutions Available:
echo 144p - 256x144
echo 240p - 426x240
echo 360p - 640x360
echo 460p - 800x240
echo 480p - 854x480
set /p res="Select a resolution (example: 144p) : "
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
set /p sound="Select a sound codec (example: aac) :"
echo Resolutions Available:
echo 144p - 256x144
echo 240p - 426x240
echo 360p - 640x360
echo 460p - 800x240
echo 480p - 854x480
set /p res="Select a resolution (example: 144p) : "
if %res%==144p goto vid144n
if %res%==240p goto vid240n
if %res%==360p goto vid360n
if %res%==460p goto vid460n
if %res%==480p goto vid480n


:vid144
echo Make sure the file is in the same folder as the program
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
echo Extensions Available:
echo .mpg
echo .mp2
echo .mp3
echo .mp4
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
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
set /p input="InputFile - (example video.mp4) : "
set /p output="OutputFile - (example output.mp4) : "
goto convertitrds

:convertitrds
echo Is this right?
echo Input: %input%
echo Output: %output%
echo Command: ffmpeg -i %input% -f mp4 -vf "fps=24000/1001, colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709, scale=256:144" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -q:v 2 -maxrate 500k -acodec aac -ar 32k -b:a 64000 -ac 1 -slices 1 -g 50 %output%
goto convertds

:convertds
ffmpeg -i %input% -f mp4 -vf "fps=24000/1001, colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709, scale=256:144" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -q:v 2 -maxrate 500k -acodec aac -ar 32k -b:a 64000 -ac 1 -slices 1 -g 50 %output%
echo Press any key to convert another file...
pause>nul
goto setupds

