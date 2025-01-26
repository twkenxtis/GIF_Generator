cls
@echo off
setlocal enabledelayedexpansion
rem debug �}��
set "debug=false" & rem true or false
rem ������GIFV5_2

rem �N�X��d
del /Q .\program\window_count.txt >nul

set "file_list=GIF_generatoring_DONT-DEL.mp4 123_tempfile.mp4 finalgif_DONT-DEL.gif .\program\frame*.png .\program\finalgi*.gif .\program\testfram*.jpg GIF_testing_DONT-DEL.mp4"
set "lockFile=.\program\lockfile.lck"
rem �M��false=�L���`
set "any_file_exists=false"
    for %%i in (%file_list%) do (
        if exist "%%i" ( set "any_file_exists=true" )
    )
    if !any_file_exists! == true (
        if exist !lockFile! (
            cls
                echo WARNING! script is already running, STOP and checking... [Multiple windows detected now]
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo If you want to stop the script, please close the window and reopen the program. 
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo If you have confirmed that only one window is open, press 'e' to skip this error...
                    choice /c pe /n /t 30 /d p
                    set "MultiwindowsChoice=!errorlevel!"
                    if !MultiwindowsChoice! == 1 (
                        cls
                        echo You choose the default value P 'p' > nul
                        rem ���}�{��
                        goto :eof 
                    ) else if !MultiwindowsChoice! == 2 (
                        endlocal
                            setlocal enabledelayedexpansion
                            cls
                            echo Are you sure you want to skip this error?
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                                timeout /nobreak /t 2 > nul
                            echo Press 'e' to confirm that the error is skipped.
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                                choice /c pe /n /t 10 /d p
                                rem ���L��l���`�˴�
                                set "MultiwindowsChoice=!errorlevel!"
                                    if !MultiwindowsChoice! == 1 (
                                        cls
                                        echo You choose the default value P 'p' > nul
                                            rem ���}�{��
                                            goto :eof 
                                            ) else if !MultiwindowsChoice! == 2 (
                                                cls
                                                del /Q GIF_generatoring_DONT-DEL.mp4 >nul
                                                del /Q finalgi*.gif >nul 
                                                del /Q finalgif_DONT-DEL.gif >nul
                                                del /Q GIF_generatoring_DONT-DEL.mp4 >nul
                                                del /Q 123_tempfile.mp4 >nul 
                                                del /Q .\program\testfram*.jpg >nul
                                                del /Q GIF_testing_DONT-DEL.mp4 >nul
                                                del /Q !lockFile! >nul
                                                del /Q .\program\frame*.png >nul
                                                del /Q .\program\finalgif_DONT-DEL.gif >nul 
                                                echo You choose 'e' to make sure the error is skipped. > nul
                                                    del /Q !lockFile! >nul
                                                        rem ���L��l���`�˴�
                                                        goto :source
                                            )
                        )
    )
    del /Q .\program\finalgi*.gif >nul
    del /Q GIF_generatoring_DONT-DEL.mp4 >nul
    del /Q finalgi*.gif >nul 
    del /Q finalgif_DONT-DEL.gif >nul
    del /Q GIF_generatoring_DONT-DEL.mp4 >nul
    del /Q 123_tempfile.mp4 >nul 
    del /Q .\program\testfram*.jpg >nul
    del /Q GIF_testing_DONT-DEL.mp4 >nul
        rem �T�{ .\program��Ƨ��O�_�٦�frame*.png
        :delprogramanypng
            if exist ".\program\frame*.png" ( 
                rem �۹���|����.\program,Del���۰�popd�^�� pushd �����e�����|
                pushd .\program & del /Q frame*.png >nul & popd
                    ping 127.0.0.1 -n 1 -w 20 > nul
        goto :delprogramanypng
        )
            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
            echo Please wait. Initializing... Initialization failed!
            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
            echo Please close the window and reopen the program.
            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                timeout /nobreak /nobreak /t 1 >nul
            echo It is possible that the program was not closed correctly during the last run, or the generated file was deleted by mistake.
            echo Exit automatically after 3 seconds...
                timeout /nobreak /t 3 > nul 
                    exit
    )

rem ----���`�P�_�M�h�������P�_�A���`�˴�����----
:source

setlocal enabledelayedexpansion
rem �w�]����Multi�q�D false
set "Multigenfuncation_start=false"
rem �M��!(del) �g�J���Ѽv�������ɦW �Ω�!lastfailname!
del /Q .\program\lastfailname.txt

rem ----��l�Ƶ��� ----

:checkMP4
rem defines the lock file name
            echo Locking... > "!lockFile!" >nul
REM Variable initialization
set "originalFilename="
set "mp4Count=0"
set "ffmpegPath=.\program\ffmpeg" & set "ffprobePath=.\program\ffprobe"
set "videoFile=GIF_generatoring_DONT-DEL.mp4" 
rem GIFSKI Variable �ܼ�
set "quality=100" & set "motionQuality=90" & set "lossyQuality=75"
rem �k0 regenGIF'�ܼ�
set "regenGIF_Count=0"
rem �k0 oneDeplicatname
set "oneDeplicatname="
rem �k0 oneDeplicatname
set "Orgfilename="
rem �k0 userChoice
set "originalFilename[%userChoice%]="
rem �k0 suffixr
set "suffixr="
rem �k0 GIFsearchname
set "GIFsearchname="
rem �k0 failcount
set /a "failcount=0"


rem ----------------------
        if !debug! == true (
        cls
        echo First :checkmp4 funcation debug!
        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
        echo mp4Count: !mp4Count!
        echo Multigenfuncation_start !Multigenfuncation_start!
        pause
        )

    rem Ū���̫�@���ͦ����ɮ�
    set /p "templastgen=" < .\program\originalFilename[1].txt
    set "lastgen=!templastgen:~0,-1!" & rem !variable:~start,length!
    echo Original file read.�@"!templastgen!" > nul
    echo Delete the last character of the string.�@"!lastgen!" > nul

rem :Cycledetection �ܦh30S !Cycledetection_count!
set "Cycledetection_count=1"
rem �] 1 video or Multi video funcation using !mp4count!
:Cycledetection
        if !mp4Count! == 0 (
            cls
            for %%F in (*.mp4) do (
                set /A mp4Count+=1
                set "originalFilename[!mp4Count!]=%%~nF"
                )
                echo Please drag the video file to a folder that is common to this one.
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo Last generated File name�G^|!lastgen!^|
                echo All the files generated last time are placed in the output folder
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo Auto scan folder for any video files...
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo power by omenbibi
            timeout /nobreak /t 1 > nul
                if !Cycledetection_count! == 8 (
                    cls
                        echo No video in 7 seconds, the program is leaving...
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                        echo To return to GIF generation, press 'e'.
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                        choice /c pe /n /t 5 /d p
                        if errorlevel 2 (
                            set "Cycledetection_count=1"
                            goto :Cycledetection
                        ) else if errorlevel 1 (
                            cls
                            goto :eof
                        )
                )
            rem :Cycledetection �`���˴�funcation
            set /a "Cycledetection_count+=1"
                cls
                            goto :Cycledetection
) else if !mp4Count! == 1 (
    set "Cycledetection_count=1"
        set "userChoice=1"
        echo This is a single video loop. > nul
        echo Select a video "!originalFilename[1]!.mp4"
        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
            if !debug! == true ( pause )
                        goto :GIF
) else (
    set "Cycledetection_count=1"
        rem �T�w�] multivideoList �ktrue
        set "Multigenfuncation_start=true"
                    goto :Multigenfuncation
)

:Multigenfuncation
    if !mp4Count! == 1 (
        rem �M��!(del) �g�J���Ѽv�������ɦW �Ω�!lastfailname!
        del /Q .\program\lastfailname.txt
     )

        if !debug! == true (
        cls
        echo Multigenfuncation activated!
        echo Multigenfuncation_start: !Multigenfuncation_start!
        echo originalFilename: !originalFilename!
        pause
        )

set "mp4Count=0"
    REM �M���Ҧ�.mp4���A�p����ƶq�æs�x��l���W
    for %%F in (*.mp4) do (
        set /A mp4Count+=1
        set "originalFilename[!mp4Count!]=%%~nF"
    )
    REM ��ܩҦ�.mp4��󪺦C��
        echo Detects multiple videos, starts a loop to generate...
        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
        for /l %%i in (1, 1, !mp4Count!) do ( 
            echo File�G %%i !originalFilename[%%i]!
        )
        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
 
            rem this is a Multi's debug
            if %debug% == true (
            cls
            echo mp4Count  !mp4Count!
            echo Multigenfuncation_start  !Multigenfuncation_start!
            timeout /T 2
            )

        REM �w�]userchoice '1' ���L�ɮ״N���� '�ܼ�'
        set /a "userChoice=1"

            :failGIF
            if !originalFilename[%userChoice%]! == !lastfailname! ( 
                for /l %%i in (1, 1, !mp4Count!) do ( 
                    echo File�G %%i !originalFilename[%%i]! > nul
                )
                set /a "userChoice+=1"
                    if !userChoice! gtr !mp4Count! (
                        set "userChoice=1"
                            rem �M��!(del) �g�J���Ѽv�������ɦW �Ω�!lastfailname!
                            del /Q .\program\lastfailname.txt
                                goto :GIF
                    )
                )
rem continue :GIF funcation

:GIF
rem �ˬd�ɦW�O�_ '!' '^'
rem ���թ�Ѥ@�i .jpg to .\program\testfram_DONT-DEL.jpg �����ɦW.
ren "!originalFilename[%userChoice%]!.mp4" "GIF_testing_DONT-DEL.mp4"
    for %%a in (GIF_testing_DONT-DEL.mp4) do ( %ffmpegPath% -i GIF_testing_DONT-DEL.mp4 -vf "fps=1" -vframes 1 .\program\testfram_DONT-DEL.jpg >nul )
        if exist ".\program\testfram_DONT-DEL.jpg" (
            echo ���s�b�A��^ true >nul
                del /Q .\program\testfram_DONT-DEL.jpg
                    ren "GIF_testing_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
            ) else (
                del /Q "!lockFile!" >nul
                del /Q finalgi*.gif > nul 
                del /Q .\program\finalgi*.gif > nul 
                echo Executing the exit program... Do not close the window during this time!
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                if exist ".\program\frame*.png" ( 
                    rem �T�{ .\program��Ƨ��O�_�٦�frame*.png
                    :delprogramany.png_2
                        if exist ".\program\frame*.png" ( 
                            rem �۹���|����.\program,Del���۰�popd�^�� pushd �����e�����|
                            pushd .\program & del /Q frame*.png >nul & popd
                                ping 127.0.0.1 -n 1 -w 20 > nul
                                        goto :delprogramany.png_2
        ) 
    )

ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
rem �]�D�k�r�� !Multigenfuncation_start! �k false
set "Multigenfuncation_start=false"
    echo A file name containing illegal characters such as '�s' or '? or '?' in the file name.
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo Please change the file name and try again! Exit automatically after 3 seconds...
        timeout /nobreak /t 3 > nul
                goto :eof
)

echo Running Selected Files. !originalFilename[%userChoice%]!.mp4 ^(This could be a long wait ....^)
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo It's being disassembled to generate GIFs...
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w

if !debug! == true ( echo ^|!originalFilename[%userChoice%]!^| & pause )

rem �ˬd��Ƨ����L�ۦP�ɦW��GIF
rem check_if_GIF_alreadyexit 
cd "output"
for %%i in (*.mp4) do ( set "!originalFilename[%userChoice%]!=%%~ni")
rem checks if there is any GIF file named !originalFilename[%userChoice%]!
dir /b | find /i "!originalFilename[%userChoice%]!.gif" > nul
rem determines the execution result of the above command, if it exists, output a prompt, otherwise output "false"
if errorlevel 1 (
    rem determines the execution result of the above command, if it exists, output a prompt, otherwise output "false"
        if !debug! == true ( echo �S�˴����ɦW�ۦP��GIF�A�~��ͦ�
                            pause )
            cd ..
            rem ��W�r�w�Q�}�l�ͦ�
            ren "!originalFilename[%userChoice%]!.mp4" "GIF_generatoring_DONT-DEL.mp4"
                            goto :startGIFgenerator
) else (
        cls
        echo Detected GIFs with the same file name!
            :checkGIF_generatoring_DONT-DEL.mp4_Status
                if exist GIF_generatoring_DONT-DEL.mp4 (
                    REM �˴��즳GIF�ͦ����A�еy��...
                    ping 127.0.0.1 -n 1 -w 50 >nul
                goto :checkGIF_generatoring_DONT-DEL.mp4_Status
            )
            set "Orgfilename=!originalFilename[%userChoice%]!.mp4"
            set "searchname=!originalFilename[%userChoice%]! - REGN (1).gif"
                if exist "!searchname!" (
                    cls
                    echo Find files with" - REGN (1)" file

                        if !debug! == true (
                                cls
                                echo Find files with" - REGN (1)" file
                                echo ----------------------------------------------
                                echo �ɦW�w�g��_���s�R�W^(number^)�A�N�˴��Ʀr��"���W"
                                pause )
                            
                    set "Multinamesearch="
                    set "tempsuffixr="
                    for %%F in ( *.gif ) do (
                    set "tempMultinamesearch=%%~nF"
                        rem �p�W - REGN (1).gif
                        for /f "tokens=2 delims=REGN()" %%i in ( "!tempMultinamesearch!" ) do ( 
                            set "firstnametempMultinamesearch=%%~nF"
                            echo !firstnametempMultinamesearch!

                                for /f "tokens=2 delims=(*" %%i in ("!firstnametempMultinamesearch!") do ( 
                                set "tempsuffixr=%%i"
                                set "suffixr=!tempsuffixr!"
                                set /a "suffixr+=1"
                            ) 
                        )
                    )
                    cd ..
                    if !suffixr! == 100 ( cls & echo Target GIF reaches 100 REGN count limit, press any key to exit... & timeout /T 10 > nul & exit  )

                                    if !debug! == true (
                                    cls
                                    echo suffixr is "!suffixr!"  & rem !suffix!= - REGN (�̭����Ʀr +1) debug
                                    echo User-selected files.mp4: !Orgfilename! & pause ) 
                                                                          
                    rem ���s�ᤩ�ɦW�s�W�r
                    ren "!originalFilename[%userChoice%]!.mp4" "!originalFilename[%userChoice%]! - REGN (!suffixr!).mp4"
                    rem �s�W�r�ɦW�k�ٵ���l�ɦW�ܼ�
                    set "Multiname= - REGN (!suffixr!).mp4"
                    set "originalFilename[%userChoice%]=!originalFilename[%userChoice%]! - REGN (!suffixr!)"
                                                                
                        if !debug! == true ( cls
                        echo ��l�ɦW: "!Orgfilename!" & rem �ܼ�'��'.mp4 (�Ů泣�S���D)
                        echo �̲��ɦW: "!originalFilename[%userChoice%]!" & rem '�L'.mp4 (�Ů泣�S���D)
                        echo �T�{�W�h���|�O�_��W�� !originalFilename[%userChoice%]!.mp4 
                        pause )

                    rem �o�䭫�s�R�W "GIF_generatoring_DONT-DEL"�A�}�l�]GIF�ͦ� 
                    ren "!originalFilename[%userChoice%]!.mp4" "!videoFile!"
                    
                        if !debug! == true (
                            cls 
                            echo ---------------------------------------------------
                            rem �̲׽T�{�ɦW�ܼƦ��L�k�ٵ���l�ܼơA�åB�F���ݭn�a'���ɦW'
                            echo �W�B�J�w�g�N��Ƨ����ɮ׭��R�W�� 'GIF_generatoring_DONT-DEL' �}�l�]�ͦ�
                            echo ---------------------------------------------------
                            echo �v���ɦW: ^|!originalFilename[%userChoice%]!^| & pause )
                    cls 
                        echo checking "!originalFilename[%userChoice%]!.gif" Already exists in the folder.
                        echo Renaming is in progress Continue ....
                        if !debug! == true ( cls & echo �T�{�w�g��W�� 'GIF_generatoring_DONT-DEL' & pause )
                                    goto :startGIFgenerator

                ) else ( cls
                    echo �S���]�t" - REGN (1)"�ɮ� >nul
                            if !debug! == true ( cls & echo �S���]�t" - REGN (1)"�ɮ� & pause )
                    cd ..
                    set "oneDeplicatname=!originalFilename[%userChoice%]! - REGN (1)"
                    ren "!Orgfilename!" "!oneDeplicatname!"
                    rem �s�W�r�ɦW�k�ٵ���l�ɦW�ܼ�
                    set "originalFilename[%userChoice%]=!oneDeplicatname!"

                        if !debug! == true ( cls
                        echo Orgfilename: "!Orgfilename!" & rem �ܼ�'��'.mp4 (�Ů泣�S���D)
                        echo originalFilename[%userChoice%]: "!originalFilename[%userChoice%]!" & rem '�L'.mp4 (�Ů泣�S���D)
                        pause )
                                                
                    rem �o�䭫�s�R�W "GIF_generatoring_DONT-DEL"�A�}�l�]GIF�ͦ� 
                    ren "!originalFilename[%userChoice%]!" "!videoFile!"

                        echo checking "!originalFilename[%userChoice%]!.gif" Already exists in the folder.
                        echo echo Renaming is in progress Continue ....
                                    goto :startGIFgenerator
                    )
)

:startGIFgenerator
rem �ϥθ�Ƨ������ɦW!videoFile!(GIF_generatoring_DONT-DEL.mp4)�Ӷi��Ϥ�ffmpeg���
for %%i in ( GIF_generatoring_DONT-DEL.mp4 ) do ( %%~ni )
REM before grnerator GIFSKI Cal vidoe fps using ffprobe
for /f "tokens=1,*" %%a in ('%ffprobePath% -v error -select_streams v -show_entries stream^=r_frame_rate -of csv^=p^=0 "%videoFile%"') do ( set "fps=%%a %%b" )
for /f "tokens=1,*" %%a in ('%ffprobePath% -v error -select_streams v -show_entries stream^=width -of csv^=p^=0 "%videoFile%"') do ( set "video_width=%%a %%b" )
rem FPS �p��
set /a "fps=!fps! + 1" & set /a "fpsdone=!fps! / 1.5 + 7 "
if !fps! gtr 58 (
    echo Detects the selected files: !originalFilename[%userChoice%]!.mp4 Greater than 58 FPS, start the transfer. 
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo ^(This could be a long wait ....^)
    %ffmpegPath% -y -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=1,setpts=5.0*PTS" -vsync vfr -c:v libx265 -crf 20 -r 24 -c:a copy GIF_generatoring_DONT-DEL.mp4 >nul
        echo !originalFilename[%userChoice%]!.mp4 The transfer was successful, the video is being transferred, please wait. 
        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
        echo ^(This could be a long wait ....^)
        %ffmpegPath% -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=!fpsdone!" -vsync vfr .\program\frame%%04d.png  >nul
) else (
    echo Selected file. !originalFilename[%userChoice%]!.mp4 , start the transfer. 
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo ^(This could be a long wait ....^)
        %ffmpegPath% -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=!fpsdone!" -vsync vfr .\program\frame%%04d.png  >nul
)
rem start the first GIF generator (gifski) (.\program\gifski)
cls
echo !originalFilename[%userChoice%]!.mp4 Generating GIFs... Please do not close the window during this time!
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo Do not delete the temporary files, temporarily generated images and videos, etc., during operation.
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
.\program\gifski --width %video_width% --fps %fpsdone% --quality 100 --motion-quality=100 --lossy-quality=100 -o .\program\finalgif_DONT-DEL.gif .\program\frame*.png >nul
    rem after gif create checking movement is successful or not
    call :movecheck
        goto :Calgifsize 
        rem jump to  :Calgifsize

:regenGIF
cls
set /a "regenGIF_Count+=1"
rem starting compress gif size
    echo Startup Compression, Cumulative Compression !regenGIF_Count! times, up to 5 times. ^|^ !originalFilename[%userChoice%]!.gif Currently compressed to %sizeInMB%.%decimal% MB 
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo Do not close the window during this period! ^(Limit is 200MB^)
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo Do not delete the temporary files, temporarily generated images and videos, etc., during operation.
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w   
rem Second gifski generator
.\program\gifski --width %video_width% --fps %fpsdone% --quality %quality% --motion-quality=%motionQuality% --lossy-quality=%lossyQuality% -o .\program\finalgif_DONT-DEL.gif .\program\frame*.png >nul

:movecheck
rem �ԨC��GIF�ͦ������n�ˬd�O�_���ʦ��\!
move .\program\finalgif_DONT-DEL.gif .\
if exist finalgif_DONT-DEL.gif (
    echo 'finalgif_DONT-DEL.gif' moved. > nul
        goto :Calgifsize
) else (
    goto :movecheck
)

:Calgifsize
rem Cal finalgif_DONT-DEL.gif size 
    set "targetFile=finalgif_DONT-DEL.gif"
    for %%I in ("%targetFile%") do (
        set "size=%%~zI"
    )
        rem bytes Cal trasfor MB
        set /a "sizeInMB=size / 1024 / 1024"
        set /a "remainder=size %% (1024 * 1024)"
        set "decimal=!remainder:~0,2!"
        for %%F in (%targetFile%) do (
            set "fileSize=%%~zF" rem filesize
        )
        echo File Size: %fileSize% bytes > nul
        echo Size in MB: %sizeInMB%.%decimal% MB > nul
            rem �ϰ��ܼ� & �����ܼ�

rem check GIF size 10MBlimit
rem checkfinalgif_status
for %%F in (finalgif_DONT-DEL.gif) do set "fileSize=%%~zF"
if %fileSize% gtr 208666624 (
    set /a "lossyQuality-=5"
    set /a "motionQuality-=1"
    set /a "quality-=7"
    REM �קK�ܼ��k0
        if !lossyQuality! lss 5 set "lossyQuality=75" 
        if !motionQuality! lss 5 set "motionQuality=90"
        if !quality! lss 5 set "quality=100"
    REM ���Y���ƽվ� compress count
    if !regenGIF_Count! gtr 4 ( goto :regenGIF_Count )
        rem �p��regenGIF failcount
                goto :regenGIF
) else (
    rem ���Y���\�]final funcation
    goto :final
        )

:regenGIF_Count
rem�@���Y���� regen GIF fail funcation
del /Q finalgi*.gif 2> nul
rem ���ɦW GIF_generatoring_DONT-DEL.mp4 �٭즨��Ӫ��ɦW�A�`�N�ɦW�Ů檺�٭쪬�p�I
ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
        if exist ".\program\frame*.png" ( pushd .\program & del /Q frame*.png 2> nul & popd )      
            rem �g�J���Ѽv�������ɦW �Ω�!lastfailname!
            echo !originalFilename[%userChoice%]! > .\program\lastfailname.txt
            rem Ū�����Ѽv�������ɦW �Ω�!lastfailname!
            set /p "templastfail=" < .\program\lastfailname.txt
            set "lastfailname=!templastfail:~0,-1!" & rem !variable:~start,length!
            echo Ū������l��:�@"!templastfail!" > nul
            echo Delete the last character of a string:�@"!lastfailname!" > nul
            del /Q .\program\frame*.png >nul
                rem �p��regenGIF failcount
                set /a "failcount+=1"
                if !Multigenfuncation_start! == true ( 
                    if !failcount! gtr 4 (
                    ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"    
                        echo  !originalFilename[%userChoice%]!.gif Generation failed, the upper limit of compression times has been reached!
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                        echo  Video file: !originalFilename[%userChoice%]!.mp4
                        echo  The last compression to:!sizeInMB!.!decimal!MB
                        echo  Please try to replace the video file, shorten the video length, or change the resolution.
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w 
                            timeout /t 10 > nul
                            del /Q "!lockFile!" >nul
                            del /Q .\program\lastfailname.txt >nul
                                exit
                ) else (
                rem ���]regen Multi�j��
                        goto :failGIF 
                    )
                )

                if !Multigenfuncation_start! == false (
                    if !mp4count! == 1 (
                            echo  !originalFilename[%userChoice%]!.gif Generation failed, the upper limit of compression times has been reached!�I
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                            echo  Video file: !originalFilename[%userChoice%]!.mp4
                            echo  The last compression to:!sizeInMB!.!decimal!MB
                            echo  Please try to replace the video file, shorten the video length, or change the resolution.
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w 
                                timeout /t 10 > nul
                                del /Q "!lockFile!" >nul
                                del /Q .\program\lastfailname.txt >nul
                                    exit
                    )
                )

:final
rem �g�J�ϥΪ̿�ܪ��ɦW
echo !originalFilename[%userChoice%]! > .\program\originalFilename[1].txt
ping 127.0.0.1 -n 1 -w 50 >nul & rem ���i�R��������_�h�|�]���L�֦ӥX��
    if !mp4Count! == 0 ( ping 127.0.0.1 -n 1 -w 100 > nul 
        del /Q !lockFile! )
        if not exist "output" (mkdir "output")
        del /Q .\program\frame*.png
        rem Ū����l�Ω�!lastfailname!
        set /p "templastgen=" < .\program\lastfailname.txt
        set "templastgen=!templastgen:~0,-1!" & rem !variable:~start,length!
        echo Ū������l��:�@"!templastgen!" > nul
        echo �R���r�ꪺ�̫�@�Ӧr��:�@"!templastgen!" > nul
        rem ���ʤ��� output ��Ƨ�
        move "GIF_generatoring_DONT-DEL.mp4" "output\"
        move "finalgif_DONT-DEL.gif" "output\"
        rem �i�J output ��Ƨ�
        cd "output"
        rem ���R�W���
        ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
        ren "finalgif_DONT-DEL.gif" "!originalFilename[%userChoice%]!.gif"
        cd ..

        rem �˴�mp4 count �O�_�ѤU '1' ���v���A�p�G�O ���� Multigenfuncation_start=false
        echo mp4Count: !mp4Count! > nul
        if !mp4Count! == 1 ( 
            ping 127.0.0.1 -n 1 -w 100 > nul
            set "Multigenfuncation_start=false"
            )

echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo Waiting for temporary file cleanup to execute...
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo "Successfully generated" file name: "!originalFilename[%userChoice%]!.gif"
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo Re-executing...
rem false=goto Multigenerator�j��
if !Multigenfuncation_start! == true ( 
        goto :Multigenfuncation 
        )
goto :checkMP4 & rem end
