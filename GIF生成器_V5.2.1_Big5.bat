::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFCH+343IR0aRQeNXA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJlZkoaHmQ=
::ZQ05rAF9IBncCkqN+0xwdVsBAlXMbgs=
::ZQ05rAF9IAHYFVzEqQIXAT3TuPsE1Js//318
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIRaAhdQRSOOSudL5Nc7+316viGtkIPNA==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATE+081JhldTg3i
::dhAmsQZ3MwfNWATE1VIxKxNRAVbMbCu2D7YZ5vv+jw==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wKhpHRGQ=
::dhA7pRFwIByZRRmG/UVlaBhbSAHi
::Zh4grVQjdCuDJFCH+34XAT3TuPsE1Js//30j3r21vaTW7EgFUYI=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
cls
@echo off
setlocal enabledelayedexpansion
rem debug �}��
set "debug=false" & rem true or false
rem ������GIFV5_2

rem �N�X��d
del /Q .\program\window_count.txt 2>nul

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
                echo �˴���h�������I
                echo �Ӹ}�����t�@�ӹ�Ҥw�b�B��C
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo �Y�w�T�{�u�}�Ҥ@�ӵ����A�Ы� 'e' �w���L�����~...
                    choice /c pe /n /t 30 /d p
                    set "MultiwindowsChoice=!errorlevel!"
                    if !MultiwindowsChoice! == 1 (
                        cls
                        echo �A��ܹw�]��P 'p' > nul
                        rem ���}�{��
                        goto :eof 
                    ) else if !MultiwindowsChoice! == 2 (
                        endlocal
                            setlocal enabledelayedexpansion
                            cls
                            echo �A�T�w�n���L�o�ӿ��~�ܡH
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                                timeout /nobreak /t 1 > nul
                            echo �� 'e' �T�w���L�o�ӿ��~�C
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                                choice /c pe /n /t 10 /d p
                                rem ���L��l���`�˴�
                                set "MultiwindowsChoice=!errorlevel!"
                                    if !MultiwindowsChoice! == 1 (
                                        cls
                                        echo �A��ܹw�]��P 'p' > nul
                                            rem ���}�{��
                                            goto :eof 
                                            ) else if !MultiwindowsChoice! == 2 (
                                                cls
                                                echo �A��� 'e' �T�w���L�o�ӿ��~ > nul
                                                    del /Q !lockFile! 2>nul
                                                        rem ���L��l���`�˴�
                                                        goto :source
                                            )
                        )
    )
    del /Q .\program\finalgi*.gif 2>nul
    del /Q GIF_generatoring_DONT-DEL.mp4 2>nul & rem �R���v����l��
    del /Q finalgi*.gif 2>nul 
    del /Q 123_tempfile.mp4 2>nul 
    del /Q .\program\testfram*.jpg 2>nul
    del /Q GIF_testing_DONT-DEL.mp4 2>nul
        rem �T�{ .\program��Ƨ��O�_�٦�frame*.png
        :delprogramanypng
            if exist ".\program\frame*.png" ( 
                rem �۹���|����.\program,Del���۰�popd�^�� pushd �����e�����|
                pushd .\program & del /Q frame*.png 2>nul & popd
                    ping 127.0.0.1 -n 1 -w 20 > nul
        goto :delprogramanypng
        )
            cls
            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
            echo �еy��D���b��l��... ��l�ƥ��ѡI
            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
            echo �����������A���s�}�ҥ��{���C
            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                timeout /nobreak /nobreak /t 1 2>nul
            echo �i���W���B�@�ɥ����T�����{���A�λ~�R���ͦ������ɮסC
            echo �T���۰ʰh�X...
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
            echo Locking... > "!lockFile!" 2>nul
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
    echo Ū������l��:�@"!templastgen!" > nul
    echo �R���r�Ŧꪺ�̫�@�Ӧr��:�@"!lastgen!" > nul

rem :Cycledetection �ܦh30S !Cycledetection_count!
set "Cycledetection_count=1"
rem �] 1 video or Multi video funcation using !mp4count!
:Cycledetection
        if !mp4Count! == 0 (
            for %%F in (*.mp4) do (
                set /A mp4Count+=1
                set "originalFilename[!mp4Count!]=%%~nF"
                )
                cls
                echo �бN�v���ɮש�ʨ�P���@�P����Ƨ����C
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo �̫�@���ͦ���GIF�G^|!lastgen!.gif^|
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                echo �C���˴���.... 
            rem �C���˴��@��
            timeout /nobreak /t 1 > nul
                if !Cycledetection_count! == 3 (
                    cls
                        echo 3 ���L�v���A�{���Y�N���}...
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                        echo �p�ݪ�^ GIF �ͦ� �A�Ы� 'e'
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
                            goto :Cycledetection
) else if !mp4Count! == 1 (
    set "Cycledetection_count=1"
        set "userChoice=1"
        cls
        echo �o�O��v���j�� > nul
        echo ��ܤ@���v�� "!originalFilename[1]!.mp4"
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
        echo Multigenfuncation �Q�Ұ�!
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
        cls
        echo �˴���h���v���A�Ұʴ`���ͦ�...
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
    for %%a in (GIF_testing_DONT-DEL.mp4) do ( %ffmpegPath% -i GIF_testing_DONT-DEL.mp4 -vf "fps=1" -vframes 1 .\program\testfram_DONT-DEL.jpg 2>nul )
        if exist ".\program\testfram_DONT-DEL.jpg" (
            echo ���s�b�A��^ true >nul
                del /Q .\program\testfram_DONT-DEL.jpg
                    ren "GIF_testing_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
            ) else (
                del /Q "!lockFile!" >nul
                del /Q finalgi*.gif > nul 
                del /Q .\program\finalgi*.gif > nul 
                echo ����h�X�{����... �ФŦb���������������I
                echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                if exist ".\program\frame*.png" ( 
                    rem �T�{ .\program��Ƨ��O�_�٦�frame*.png
                    :delprogramany.png_2
                        if exist ".\program\frame*.png" ( 
                            rem �۹���|����.\program,Del���۰�popd�^�� pushd �����e�����|
                            pushd .\program & del /Q frame*.png 2>nul & popd
                                ping 127.0.0.1 -n 1 -w 20 > nul
                                        goto :delprogramany.png_2
        ) 
    )

ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
rem �]�D�k�r�� !Multigenfuncation_start! �k false
set "Multigenfuncation_start=false"
    cls
    echo �˴����ɦW�t�� '�s' �� '?' ���D�k�r���C
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo �Ч���ɦW�᭫�աI�T����۰ʰh�X...
        timeout /nobreak /t 3 > nul
                goto :eof
)

cls
echo ���椤 ��ܪ��ɮ�: !originalFilename[%userChoice%]!.mp4 ^(�o�i��n���ݫܪ����ɶ�....^)
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo ���b�N��Ѧ��ӥͦ�GIF...
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w

if !debug! == true ( echo ^|!originalFilename[%userChoice%]!^| & pause )

rem �ˬd��Ƨ����L�ۦP�ɦW��GIF
rem check_if_GIF_alreadyexit 
for %%i in (*.mp4) do ( set "!originalFilename[%userChoice%]!=%%~ni")
rem checks if there is any GIF file named !originalFilename[%userChoice%]!
dir /b | find /i "!originalFilename[%userChoice%]!.gif" > nul
rem determines the execution result of the above command, if it exists, output a prompt, otherwise output "false"
if errorlevel 1 (
    rem determines the execution result of the above command, if it exists, output a prompt, otherwise output "false"
        if !debug! == true ( echo �S�˴����ɦW�ۦP��GIF�A�~��ͦ�
                            pause )
            rem ��W�r�w�Q�}�l�ͦ�
            ren "!originalFilename[%userChoice%]!.mp4" "GIF_generatoring_DONT-DEL.mp4"
                            goto :startGIFgenerator
) else (
        cls
        echo �˴���ۦP�ɦW��GIF!
            :checkGIF_generatoring_DONT-DEL.mp4_Status
                if exist GIF_generatoring_DONT-DEL.mp4 (
                    REM �˴��즳GIF�ͦ����A�еy��...
                    ping 127.0.0.1 -n 1 -w 50 >nul
                goto :checkGIF_generatoring_DONT-DEL.mp4_Status
            )
            set "Orgfilename=!originalFilename[%userChoice%]!.mp4"
            set "searchname=!originalFilename[%userChoice%]! - ���ƥͦ� (1).gif"
                if exist "!searchname!" (
                    cls
                    echo ����ɦW�]�t" - ���ƥͦ� (1)"�ɮ�

                        if !debug! == true (
                                cls
                                echo ����ɦW�]�t" - ���ƥͦ� (1)"�ɮ�
                                echo ----------------------------------------------
                                echo �ɦW�w�g��_���s�R�W^(number^)�A�N�˴��Ʀr��"���W"
                                pause )
                            
                    set "Multinamesearch="
                    set "tempsuffixr="
                    for %%F in ( *.gif ) do (
                    set "tempMultinamesearch=%%~nF"
                        rem �p�W - ���ƥͦ� (1).gif
                        for /f "tokens=2 delims=���ƥͦ�()" %%i in ( "!tempMultinamesearch!" ) do ( 
                            set "firstnametempMultinamesearch=%%~nF"
                            echo !firstnametempMultinamesearch!

                                for /f "tokens=2 delims=(*" %%i in ("!firstnametempMultinamesearch!") do ( 
                                set "tempsuffixr=%%i"
                                set "suffixr=!tempsuffixr!"
                                set /a "suffixr+=1"
                            ) 
                        )
                    )
                    if !suffixr! == 100 ( cls & echo �ؼ�GIF�F��100�����ƥͦ����ƤW���A�����N��h�X... & timeout /T 10 > nul & exit  )

                                    if !debug! == true (
                                    cls
                                    echo suffixr is "!suffixr!"  & rem !suffix!= - ���ƥͦ� (�̭����Ʀr +1) debug
                                    echo �ϥΪ̿�ܪ��ɮ�.mp4: !Orgfilename! & pause ) 
                                                                          
                    rem ���s�ᤩ�ɦW�s�W�r
                    ren "!originalFilename[%userChoice%]!.mp4" "!originalFilename[%userChoice%]! - ���ƥͦ� (!suffixr!).mp4"
                    rem �s�W�r�ɦW�k�ٵ���l�ɦW�ܼ�
                    set "Multiname= - ���ƥͦ� (!suffixr!).mp4"
                    set "originalFilename[%userChoice%]=!originalFilename[%userChoice%]! - ���ƥͦ� (!suffixr!)"
                                                                
                        if !debug! == true ( cls
                        echo ��l�ɦW: "!Orgfilename!" & rem �ܼ�'��'.mp4 (�Ů泣�S���D)
                        echo �̲��ɦW: "!originalFilename[%userChoice%]!" & rem '�L'.mp4 (�Ů泣�S���D)
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
                        echo �˴���"!originalFilename[%userChoice%]!.gif"�@�w�g�s�b��Ƨ����C
                        echo ���b���s�R�W�w�~��....
                        if !debug! == true ( cls & echo �T�{�w�g��W�� 'GIF_generatoring_DONT-DEL' & pause )
                                    goto :startGIFgenerator

                ) else ( cls
                    echo �S���]�t" - ���ƥͦ� (1)"�ɮ�
                            if !debug! == true ( cls & echo �S���]�t" - ���ƥͦ� (1)"�ɮ� & pause )
                    set "oneDeplicatname=!originalFilename[%userChoice%]! - ���ƥͦ� (1)"
                    ren "!Orgfilename!" "!oneDeplicatname!"
                    rem �s�W�r�ɦW�k�ٵ���l�ɦW�ܼ�
                    set "originalFilename[%userChoice%]=!oneDeplicatname!"

                        if !debug! == true ( cls
                        echo Orgfilename: "!Orgfilename!" & rem �ܼ�'��'.mp4 (�Ů泣�S���D)
                        echo originalFilename[%userChoice%]: "!originalFilename[%userChoice%]!" & rem '�L'.mp4 (�Ů泣�S���D)
                        pause )
                                                
                    rem �o�䭫�s�R�W "GIF_generatoring_DONT-DEL"�A�}�l�]GIF�ͦ� 
                    ren "!originalFilename[%userChoice%]!" "!videoFile!"

                    cls 
                        echo �˴���"!originalFilename[%userChoice%]!.gif"�@�w�g�s�b��Ƨ����C
                        echo ���b���s�R�W�w�~��....
                                    goto :startGIFgenerator
                    )
)

:startGIFgenerator
rem �ϥθ�Ƨ������ɦW!videoFile!(GIF_generatoring_DONT-DEL.mp4)�Ӷi��Ϥ�ffmpeg���
for %%i in ( GIF_generatoring_DONT-DEL.mp4 ) do ( %%~ni )
REM before grnerator GIFSKI Cal vidoe fps using ffprobe
for /f "tokens=1,*" %%a in ('%ffprobePath% -v error -select_streams v -show_entries stream^=r_frame_rate -of csv^=p^=0 "%videoFile%"') do ( set "fps=%%a %%b" ) 
rem FPS �p��
set /a "fps=!fps! + 1" & set /a "fpsdone=!fps! / 4 + 2 "
rem if video fps more than 24 fps ffmpeg to 24 fps
if !fps! gtr 23 (
    cls
    echo �˴����ܪ��ɮ�: !originalFilename[%userChoice%]!.mp4 �j�� 24 FPS�A�Ұ����ɡC 
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo ^(�o�i��n���ݫܪ����ɶ�....^)
    %ffmpegPath% -hide_banner -y -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=1,setpts=5.0*PTS" -vsync vfr -c:v libx265 -crf 51 -c:a copy 123_tempfile.mp4 2>nul
        del /Q 123_tempfile.mp4
    cls
        echo !originalFilename[%userChoice%]!.mp4 ���ɦ��\�A���b�N�v�����ɽеy��C 
        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
        echo ^(�o�i��n���ݫܪ����ɶ�....^)
        %ffmpegPath% -hide_banner -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=!fpsdone!" -vsync vfr .\program\frame%%04d.png  2>nul
) else (
    cls
    echo ��ܪ��ɮ�: !originalFilename[%userChoice%]!.mp4 ���b���ɡC 
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo ^(�o�i��n���ݫܪ����ɶ�....^)
    %ffmpegPath% -hide_banner -y -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=1,setpts=5.0*PTS" -vsync vfr -c:v libx265 -c:a copy 123_tempfile.mp4  2>nul
        del /Q 123_tempfile.mp4
        %ffmpegPath% -hide_banner -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=!fpsdone!" -vsync vfr .\program\frame%%04d.png  2>nul
)
rem start the first GIF generator (gifski) (.\program\gifski)
cls
echo !originalFilename[%userChoice%]!.mp4 ���b�ͦ�GIF... �ФŦb���������������I
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo �B�@�����ФŧR����󪺼Ȧs�ɮסA�Ȯɥͦ����Ϥ��v�����C
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
.\program\gifski --width 720 --fps %fpsdone% --quality 100 --motion-quality=100 --lossy-quality=75 -o .\program\finalgif_DONT-DEL.gif .\program\frame*.png 2>nul
    rem after gif create checking movement is successful or not
    call :movecheck
        goto :Calgifsize 
        rem jump to  :Calgifsize

:regenGIF
set /a "regenGIF_Count+=1"
rem starting compress gif size
cls
    echo �Ұ����Y�A�֭p���Y!regenGIF_Count!���A�W����10�� ^|^ !originalFilename[%userChoice%]!.gif �ثe���Y�� %sizeInMB%.%decimal% MB 
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo �ФŦb���������������I
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
    echo �B�@�����ФŧR����󪺼Ȧs�ɮסA�Ȯɥͦ����Ϥ��v�����C
    echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w   
rem Second gifski generator
.\program\gifski --width 720 --fps %fpsdone% --quality %quality% --motion-quality=%motionQuality% --lossy-quality=%lossyQuality% -o .\program\finalgif_DONT-DEL.gif .\program\frame*.png 2>nul

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
if %fileSize% gtr 10485759 (
    set /a "lossyQuality-=5"
    set /a "motionQuality-=1"
    set /a "quality-=7"
    REM �קK�ܼ��k0
        if !lossyQuality! lss 10 set "lossyQuality=75" 
        if !motionQuality! lss 10 set "motionQuality=90"
        if !quality! lss 10 set "quality=100"
    REM ���Y���ƽվ� compress count
    if !regenGIF_Count! gtr 9 ( goto :regenGIF_Count )
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
            echo �R���r�Ŧꪺ�̫�@�Ӧr��:�@"!lastfailname!" > nul
                rem �p��regenGIF failcount
                set /a "failcount+=1"
                if !Multigenfuncation_start! == true ( 
                    if !failcount! gtr 4 (
                    ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"    
                    cls
                        echo  !originalFilename[%userChoice%]!.gif �ͦ����ѡA�F�����Y���ƤW���I
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                        echo  ��l�v�� !originalFilename[%userChoice%]!.mp4 �w�O�d���R��
                        echo  �̫�@�����Y��:!sizeInMB!.!decimal!?
                        echo  �й��մ����v���ɮסA���Y�u�v�����סF���ܸѪR��
                        echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w 
                            timeout /t 10 > nul
                            del /Q "!lockFile!" 2>nul
                            del /Q .\program\lastfailname.txt 2>nul
                                exit
                ) else (
                rem ���]regen Multi�j��
                        goto :failGIF 
                    )
                )

                if !Multigenfuncation_start! == false (
                    if !mp4count! == 1 (
                        cls
                            echo  !originalFilename[%userChoice%]!.gif �ͦ����ѡA�F�����Y���ƤW���I
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
                            echo  ��l�v�� !originalFilename[%userChoice%]!.mp4 �w�O�d���R��
                            echo  �̫�@�����Y��:!sizeInMB!.!decimal!?
                            echo  �й��մ����v���ɮסA���Y�u�v�����סF���ܸѪR��
                            echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w 
                                timeout /t 10 > nul
                                del /Q "!lockFile!" 2>nul
                                del /Q .\program\lastfailname.txt 2>nul
                                    exit
                    )
                )

:final
rem �g�J�ϥΪ̿�ܪ��ɦW
echo !originalFilename[%userChoice%]! > .\program\originalFilename[1].txt
ping 127.0.0.1 -n 1 -w 10 >nul & rem ���i�R��������_�h�|�]���L�֦ӥX��
    if !mp4Count! == 0 ( ping 127.0.0.1 -n 1 -w 100 > nul 
        del /Q !lockFile! )
        del /Q .\program\frame*.png
        del /Q GIF_generatoring_DONT-DEL.mp4 & rem �R����l�v����
        rem �˴�mp4 count �O�_�ѤU '1' ���v���A�p�G�O ���� Multigenfuncation_start=false
        echo mp4Count: !mp4Count! > nul
        if !mp4Count! == 1 ( 
            ping 127.0.0.1 -n 1 -w 100 > nul
            set "Multigenfuncation_start=false"
            )
        rem final ��W,final rename process
        ren "finalgif_DONT-DEL.gif" "!originalFilename[%userChoice%]!.gif"
cls
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo ���b���ݼȦs���M�����椤... 
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo "���\�ͦ�" �ɮצW�٬�: "!originalFilename[%userChoice%]!.gif"
echo �w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w�w
echo ���s���椤...
rem false=goto Multigenerator�j��
if !Multigenfuncation_start! == true ( 
        goto :Multigenfuncation 
        )
goto :checkMP4 & rem end