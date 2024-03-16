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
rem debug 開關
set "debug=false" & rem true or false
rem 版本號GIFV5_2

rem 代碼遺留
del /Q .\program\window_count.txt 2>nul

set "file_list=GIF_generatoring_DONT-DEL.mp4 123_tempfile.mp4 finalgif_DONT-DEL.gif .\program\frame*.png .\program\finalgi*.gif .\program\testfram*.jpg GIF_testing_DONT-DEL.mp4"
set "lockFile=.\program\lockfile.lck"
rem 清單false=無異常
set "any_file_exists=false"
    for %%i in (%file_list%) do (
        if exist "%%i" ( set "any_file_exists=true" )
    )
    if !any_file_exists! == true (
        if exist !lockFile! (
            cls
                echo 檢測到多重視窗！
                echo 該腳本的另一個實例已在運行。
                echo ─────────────────────────────────────────────────────────────
                echo 若已確認只開啟一個視窗，請按 'e' 已跳過此錯誤...
                    choice /c pe /n /t 30 /d p
                    set "MultiwindowsChoice=!errorlevel!"
                    if !MultiwindowsChoice! == 1 (
                        cls
                        echo 你選擇預設值P 'p' > nul
                        rem 離開程式
                        goto :eof 
                    ) else if !MultiwindowsChoice! == 2 (
                        endlocal
                            setlocal enabledelayedexpansion
                            cls
                            echo 你確定要跳過這個錯誤嗎？
                            echo ──────────────────────────
                                timeout /nobreak /t 1 > nul
                            echo 按 'e' 確定跳過這個錯誤。
                            echo ──────────────────────────
                                choice /c pe /n /t 10 /d p
                                rem 跳過初始異常檢測
                                set "MultiwindowsChoice=!errorlevel!"
                                    if !MultiwindowsChoice! == 1 (
                                        cls
                                        echo 你選擇預設值P 'p' > nul
                                            rem 離開程式
                                            goto :eof 
                                            ) else if !MultiwindowsChoice! == 2 (
                                                cls
                                                echo 你選擇 'e' 確定跳過這個錯誤 > nul
                                                    del /Q !lockFile! 2>nul
                                                        rem 跳過初始異常檢測
                                                        goto :source
                                            )
                        )
    )
    del /Q .\program\finalgi*.gif 2>nul
    del /Q GIF_generatoring_DONT-DEL.mp4 2>nul & rem 刪除影片原始檔
    del /Q finalgi*.gif 2>nul 
    del /Q 123_tempfile.mp4 2>nul 
    del /Q .\program\testfram*.jpg 2>nul
    del /Q GIF_testing_DONT-DEL.mp4 2>nul
        rem 確認 .\program資料夾是否還有frame*.png
        :delprogramanypng
            if exist ".\program\frame*.png" ( 
                rem 相對路徑跳到.\program,Del完自動popd回到 pushd 跳之前的路徑
                pushd .\program & del /Q frame*.png 2>nul & popd
                    ping 127.0.0.1 -n 1 -w 20 > nul
        goto :delprogramanypng
        )
            cls
            echo ─────────────────────────────────────────────────────────────
            echo 請稍後．正在初始化... 初始化失敗！
            echo ─────────────────────────────────────────────────────────────
            echo 請關閉視窗，重新開啟本程式。
            echo ─────────────────────────────────────────────────────────────
                timeout /nobreak /nobreak /t 1 2>nul
            echo 可能於上次運作時未正確關閉程式，或誤刪除生成中的檔案。
            echo 三秒後自動退出...
                timeout /nobreak /t 3 > nul 
                    exit
    )

rem ----異常判斷和多重視窗判斷，異常檢測結束----
:source
setlocal enabledelayedexpansion
rem 預設不走Multi通道 false
set "Multigenfuncation_start=false"
rem 清空!(del) 寫入失敗影片的的檔名 用於!lastfailname!
del /Q .\program\lastfailname.txt

rem ----初始化結束 ----

:checkMP4
rem defines the lock file name
            echo Locking... > "!lockFile!" 2>nul
REM Variable initialization
set "originalFilename="
set "mp4Count=0"
set "ffmpegPath=.\program\ffmpeg" & set "ffprobePath=.\program\ffprobe"
set "videoFile=GIF_generatoring_DONT-DEL.mp4" 
rem GIFSKI Variable 變數
set "quality=100" & set "motionQuality=90" & set "lossyQuality=75"
rem 歸0 regenGIF'變數
set "regenGIF_Count=0"
rem 歸0 oneDeplicatname
set "oneDeplicatname="
rem 歸0 oneDeplicatname
set "Orgfilename="
rem 歸0 userChoice
set "originalFilename[%userChoice%]="
rem 歸0 suffixr
set "suffixr="
rem 歸0 GIFsearchname
set "GIFsearchname="
rem 歸0 failcount
set /a "failcount=0"
rem ----------------------
        if !debug! == true (
        cls
        echo First :checkmp4 funcation debug!
        echo ─────────────────────────────────────────────────────────────
        echo mp4Count: !mp4Count!
        echo Multigenfuncation_start !Multigenfuncation_start!
        pause
        )

    rem 讀取最後一次生成的檔案
    set /p "templastgen=" < .\program\originalFilename[1].txt
    set "lastgen=!templastgen:~0,-1!" & rem !variable:~start,length!
    echo 讀取的原始檔:　"!templastgen!" > nul
    echo 刪除字符串的最後一個字元:　"!lastgen!" > nul

rem :Cycledetection 至多30S !Cycledetection_count!
set "Cycledetection_count=1"
rem 跑 1 video or Multi video funcation using !mp4count!
:Cycledetection
        if !mp4Count! == 0 (
            for %%F in (*.mp4) do (
                set /A mp4Count+=1
                set "originalFilename[!mp4Count!]=%%~nF"
                )
                cls
                echo 請將影片檔案拖動到與此共同的資料夾內。
                echo ─────────────────────────────────────────────────────────────
                echo 最後一次生成的GIF：^|!lastgen!.gif^|
                echo ─────────────────────────────────────────────────────────────
                echo 每秒檢測中.... 
            rem 每秒檢測一次
            timeout /nobreak /t 1 > nul
                if !Cycledetection_count! == 3 (
                    cls
                        echo 3 秒內無影片，程式即將離開...
                        echo ─────────────────────────────────────────────────────────────
                        echo 如需返回 GIF 生成 ，請按 'e'
                        echo ─────────────────────────────────────────────────────────────
                        choice /c pe /n /t 5 /d p
                        if errorlevel 2 (
                            set "Cycledetection_count=1"
                            goto :Cycledetection
                        ) else if errorlevel 1 (
                            cls
                            goto :eof
                        )
                )
            rem :Cycledetection 循環檢測funcation
            set /a "Cycledetection_count+=1"
                            goto :Cycledetection
) else if !mp4Count! == 1 (
    set "Cycledetection_count=1"
        set "userChoice=1"
        cls
        echo 這是單影片迴圈 > nul
        echo 選擇一部影片 "!originalFilename[1]!.mp4"
        echo ─────────────────────────────────────────────────────────────
            if !debug! == true ( pause )
                        goto :GIF
) else (
    set "Cycledetection_count=1"
        rem 確定跑 multivideoList 歸true
        set "Multigenfuncation_start=true"
                    goto :Multigenfuncation
)

:Multigenfuncation
    if !mp4Count! == 1 (
        rem 清空!(del) 寫入失敗影片的的檔名 用於!lastfailname!
        del /Q .\program\lastfailname.txt
     )

        if !debug! == true (
        cls
        echo Multigenfuncation 被啟動!
        echo Multigenfuncation_start: !Multigenfuncation_start!
        echo originalFilename: !originalFilename!
        pause
        )

set "mp4Count=0"
    REM 遍歷所有.mp4文件，計算文件數量並存儲原始文件名
    for %%F in (*.mp4) do (
        set /A mp4Count+=1
        set "originalFilename[!mp4Count!]=%%~nF"
    )
    REM 顯示所有.mp4文件的列表
        cls
        echo 檢測到多部影片，啟動循環生成...
        echo ────────────────────────────────────────────────────────────────────────────────────
        for /l %%i in (1, 1, !mp4Count!) do ( 
            echo File： %%i !originalFilename[%%i]!
        )
        echo ────────────────────────────────────────────────────────────────────────────────────
 
            rem this is a Multi's debug
            if %debug% == true (
            cls
            echo mp4Count  !mp4Count!
            echo Multigenfuncation_start  !Multigenfuncation_start!
            timeout /T 2
            )

        REM 預設userchoice '1' 跳過檔案就改變 '變數'
        set /a "userChoice=1"

            :failGIF
            if !originalFilename[%userChoice%]! == !lastfailname! ( 
                for /l %%i in (1, 1, !mp4Count!) do ( 
                    echo File： %%i !originalFilename[%%i]! > nul
                )
                set /a "userChoice+=1"
                    if !userChoice! gtr !mp4Count! (
                        set "userChoice=1"
                            rem 清空!(del) 寫入失敗影片的的檔名 用於!lastfailname!
                            del /Q .\program\lastfailname.txt
                                goto :GIF
                    )
                )
rem continue :GIF funcation

:GIF
rem 檢查檔名是否 '!' '^'
rem 嘗試拆解一張 .jpg to .\program\testfram_DONT-DEL.jpg 測試檔名.
ren "!originalFilename[%userChoice%]!.mp4" "GIF_testing_DONT-DEL.mp4"
    for %%a in (GIF_testing_DONT-DEL.mp4) do ( %ffmpegPath% -i GIF_testing_DONT-DEL.mp4 -vf "fps=1" -vframes 1 .\program\testfram_DONT-DEL.jpg 2>nul )
        if exist ".\program\testfram_DONT-DEL.jpg" (
            echo 文件存在，返回 true >nul
                del /Q .\program\testfram_DONT-DEL.jpg
                    ren "GIF_testing_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
            ) else (
                del /Q "!lockFile!" >nul
                del /Q finalgi*.gif > nul 
                del /Q .\program\finalgi*.gif > nul 
                echo 執行退出程式中... 請勿在此期間關閉視窗！
                echo ────────────────────────────────────────────────────────────────────────────────────
                if exist ".\program\frame*.png" ( 
                    rem 確認 .\program資料夾是否還有frame*.png
                    :delprogramany.png_2
                        if exist ".\program\frame*.png" ( 
                            rem 相對路徑跳到.\program,Del完自動popd回到 pushd 跳之前的路徑
                            pushd .\program & del /Q frame*.png 2>nul & popd
                                ping 127.0.0.1 -n 1 -w 20 > nul
                                        goto :delprogramany.png_2
        ) 
    )

ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
rem 跑非法字元 !Multigenfuncation_start! 歸 false
set "Multigenfuncation_start=false"
    cls
    echo 檢測到檔名含有 '︿' 或 '?' 等非法字元。
    echo ──────────────────────────────────────────────────────────────────────────────
    echo 請更改檔名後重試！三秒秒後自動退出...
        timeout /nobreak /t 3 > nul
                goto :eof
)

cls
echo 執行中 選擇的檔案: !originalFilename[%userChoice%]!.mp4 ^(這可能要等待很長的時間....^)
echo ──────────────────────────────────────────────────────────────────────────────
echo 正在將拆解成來生成GIF...
echo ──────────────────────────────────────────────────────────────────────────────

if !debug! == true ( echo ^|!originalFilename[%userChoice%]!^| & pause )

rem 檢查資料夾有無相同檔名的GIF
rem check_if_GIF_alreadyexit 
for %%i in (*.mp4) do ( set "!originalFilename[%userChoice%]!=%%~ni")
rem checks if there is any GIF file named !originalFilename[%userChoice%]!
dir /b | find /i "!originalFilename[%userChoice%]!.gif" > nul
rem determines the execution result of the above command, if it exists, output a prompt, otherwise output "false"
if errorlevel 1 (
    rem determines the execution result of the above command, if it exists, output a prompt, otherwise output "false"
        if !debug! == true ( echo 沒檢測到檔名相同的GIF，繼續生成
                            pause )
            rem 改名字已利開始生成
            ren "!originalFilename[%userChoice%]!.mp4" "GIF_generatoring_DONT-DEL.mp4"
                            goto :startGIFgenerator
) else (
        cls
        echo 檢測到相同檔名的GIF!
            :checkGIF_generatoring_DONT-DEL.mp4_Status
                if exist GIF_generatoring_DONT-DEL.mp4 (
                    REM 檢測到有GIF生成中，請稍等...
                    ping 127.0.0.1 -n 1 -w 50 >nul
                goto :checkGIF_generatoring_DONT-DEL.mp4_Status
            )
            set "Orgfilename=!originalFilename[%userChoice%]!.mp4"
            set "searchname=!originalFilename[%userChoice%]! - 重複生成 (1).gif"
                if exist "!searchname!" (
                    cls
                    echo 找到檔名包含" - 重複生成 (1)"檔案

                        if !debug! == true (
                                cls
                                echo 找到檔名包含" - 重複生成 (1)"檔案
                                echo ----------------------------------------------
                                echo 檔名已經有_重新命名^(number^)，將檢測數字並"遞增"
                                pause )
                            
                    set "Multinamesearch="
                    set "tempsuffixr="
                    for %%F in ( *.gif ) do (
                    set "tempMultinamesearch=%%~nF"
                        rem 小名 - 重複生成 (1).gif
                        for /f "tokens=2 delims=重複生成()" %%i in ( "!tempMultinamesearch!" ) do ( 
                            set "firstnametempMultinamesearch=%%~nF"
                            echo !firstnametempMultinamesearch!

                                for /f "tokens=2 delims=(*" %%i in ("!firstnametempMultinamesearch!") do ( 
                                set "tempsuffixr=%%i"
                                set "suffixr=!tempsuffixr!"
                                set /a "suffixr+=1"
                            ) 
                        )
                    )
                    if !suffixr! == 100 ( cls & echo 目標GIF達到100次重複生成次數上限，按任意鍵退出... & timeout /T 10 > nul & exit  )

                                    if !debug! == true (
                                    cls
                                    echo suffixr is "!suffixr!"  & rem !suffix!= - 重複生成 (裡面的數字 +1) debug
                                    echo 使用者選擇的檔案.mp4: !Orgfilename! & pause ) 
                                                                          
                    rem 重新賦予檔名新名字
                    ren "!originalFilename[%userChoice%]!.mp4" "!originalFilename[%userChoice%]! - 重複生成 (!suffixr!).mp4"
                    rem 新名字檔名歸還給原始檔名變數
                    set "Multiname= - 重複生成 (!suffixr!).mp4"
                    set "originalFilename[%userChoice%]=!originalFilename[%userChoice%]! - 重複生成 (!suffixr!)"
                                                                
                        if !debug! == true ( cls
                        echo 原始檔名: "!Orgfilename!" & rem 變數'有'.mp4 (空格都沒問題)
                        echo 最終檔名: "!originalFilename[%userChoice%]!" & rem '無'.mp4 (空格都沒問題)
                        pause )
                                                                    
                    rem 這邊重新命名 "GIF_generatoring_DONT-DEL"，開始跑GIF生成 
                    ren "!originalFilename[%userChoice%]!.mp4" "!videoFile!"
                    
                        if !debug! == true (
                            cls 
                            echo ---------------------------------------------------
                            rem 最終確認檔名變數有無歸還給原始變數，並且；不需要帶'副檔名'
                            echo 上步驟已經將資料夾內檔案重命名成 'GIF_generatoring_DONT-DEL' 開始跑生成
                            echo ---------------------------------------------------
                            echo 影片檔名: ^|!originalFilename[%userChoice%]!^| & pause )
                    cls 
                        echo 檢測到"!originalFilename[%userChoice%]!.gif"　已經存在資料夾內。
                        echo 正在重新命名已繼續....
                        if !debug! == true ( cls & echo 確認已經改名成 'GIF_generatoring_DONT-DEL' & pause )
                                    goto :startGIFgenerator

                ) else ( cls
                    echo 沒找到包含" - 重複生成 (1)"檔案
                            if !debug! == true ( cls & echo 沒找到包含" - 重複生成 (1)"檔案 & pause )
                    set "oneDeplicatname=!originalFilename[%userChoice%]! - 重複生成 (1)"
                    ren "!Orgfilename!" "!oneDeplicatname!"
                    rem 新名字檔名歸還給原始檔名變數
                    set "originalFilename[%userChoice%]=!oneDeplicatname!"

                        if !debug! == true ( cls
                        echo Orgfilename: "!Orgfilename!" & rem 變數'有'.mp4 (空格都沒問題)
                        echo originalFilename[%userChoice%]: "!originalFilename[%userChoice%]!" & rem '無'.mp4 (空格都沒問題)
                        pause )
                                                
                    rem 這邊重新命名 "GIF_generatoring_DONT-DEL"，開始跑GIF生成 
                    ren "!originalFilename[%userChoice%]!" "!videoFile!"

                    cls 
                        echo 檢測到"!originalFilename[%userChoice%]!.gif"　已經存在資料夾內。
                        echo 正在重新命名已繼續....
                                    goto :startGIFgenerator
                    )
)

:startGIFgenerator
rem 使用資料夾內為檔名!videoFile!(GIF_generatoring_DONT-DEL.mp4)來進行圖片ffmpeg拆解
for %%i in ( GIF_generatoring_DONT-DEL.mp4 ) do ( %%~ni )
REM before grnerator GIFSKI Cal vidoe fps using ffprobe
for /f "tokens=1,*" %%a in ('%ffprobePath% -v error -select_streams v -show_entries stream^=r_frame_rate -of csv^=p^=0 "%videoFile%"') do ( set "fps=%%a %%b" ) 
rem FPS 計算
set /a "fps=!fps! + 1" & set /a "fpsdone=!fps! / 4 + 2 "
rem if video fps more than 24 fps ffmpeg to 24 fps
if !fps! gtr 23 (
    cls
    echo 檢測到選擇的檔案: !originalFilename[%userChoice%]!.mp4 大於 24 FPS，啟動轉檔。 
    echo ──────────────────────────────────────────────────────────────────────────────────
    echo ^(這可能要等待很長的時間....^)
    %ffmpegPath% -hide_banner -y -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=1,setpts=5.0*PTS" -vsync vfr -c:v libx265 -crf 51 -c:a copy 123_tempfile.mp4 2>nul
        del /Q 123_tempfile.mp4
    cls
        echo !originalFilename[%userChoice%]!.mp4 轉檔成功，正在將影片轉檔請稍後。 
        echo ──────────────────────────────────────────────────────────────────────────────────
        echo ^(這可能要等待很長的時間....^)
        %ffmpegPath% -hide_banner -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=!fpsdone!" -vsync vfr .\program\frame%%04d.png  2>nul
) else (
    cls
    echo 選擇的檔案: !originalFilename[%userChoice%]!.mp4 正在轉檔。 
    echo ──────────────────────────────────────────────────────────────────────────────────
    echo ^(這可能要等待很長的時間....^)
    %ffmpegPath% -hide_banner -y -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=1,setpts=5.0*PTS" -vsync vfr -c:v libx265 -c:a copy 123_tempfile.mp4  2>nul
        del /Q 123_tempfile.mp4
        %ffmpegPath% -hide_banner -i GIF_generatoring_DONT-DEL.mp4 -vf "fps=!fpsdone!" -vsync vfr .\program\frame%%04d.png  2>nul
)
rem start the first GIF generator (gifski) (.\program\gifski)
cls
echo !originalFilename[%userChoice%]!.mp4 正在生成GIF... 請勿在此期間關閉視窗！
echo ──────────────────────────────────────────────────────────────────────────────────
echo 運作期間請勿刪除位於的暫存檔案，暫時生成的圖片影片等。
echo ──────────────────────────────────────────────────────────────────────────────────
.\program\gifski --width 720 --fps %fpsdone% --quality 100 --motion-quality=100 --lossy-quality=75 -o .\program\finalgif_DONT-DEL.gif .\program\frame*.png 2>nul
    rem after gif create checking movement is successful or not
    call :movecheck
        goto :Calgifsize 
        rem jump to  :Calgifsize

:regenGIF
set /a "regenGIF_Count+=1"
rem starting compress gif size
cls
    echo 啟動壓縮，累計壓縮!regenGIF_Count!次，上限為10次 ^|^ !originalFilename[%userChoice%]!.gif 目前壓縮到 %sizeInMB%.%decimal% MB 
    echo ──────────────────────────────────────────────────────────────────────────────────
    echo 請勿在此期間關閉視窗！
    echo ──────────────────────────────────────────────────────────────────────────────────
    echo 運作期間請勿刪除位於的暫存檔案，暫時生成的圖片影片等。
    echo ──────────────────────────────────────────────────────────────────────────────────   
rem Second gifski generator
.\program\gifski --width 720 --fps %fpsdone% --quality %quality% --motion-quality=%motionQuality% --lossy-quality=%lossyQuality% -o .\program\finalgif_DONT-DEL.gif .\program\frame*.png 2>nul

:movecheck
rem √每次GIF生成完都要檢查是否移動成功!
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
            rem 區域變數 & 全域變數

rem check GIF size 10MBlimit
rem checkfinalgif_status
for %%F in (finalgif_DONT-DEL.gif) do set "fileSize=%%~zF"
if %fileSize% gtr 10485759 (
    set /a "lossyQuality-=5"
    set /a "motionQuality-=1"
    set /a "quality-=7"
    REM 避免變數歸0
        if !lossyQuality! lss 10 set "lossyQuality=75" 
        if !motionQuality! lss 10 set "motionQuality=90"
        if !quality! lss 10 set "quality=100"
    REM 壓縮次數調整 compress count
    if !regenGIF_Count! gtr 9 ( goto :regenGIF_Count )
        rem 計算regenGIF failcount
                goto :regenGIF
) else (
    rem 壓縮成功跑final funcation
    goto :final
        )

:regenGIF_Count
rem　壓縮失敗 regen GIF fail funcation
del /Q finalgi*.gif 2> nul
rem 把檔名 GIF_generatoring_DONT-DEL.mp4 還原成原來的檔名，注意檔名空格的還原狀況！
ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"
        if exist ".\program\frame*.png" ( pushd .\program & del /Q frame*.png 2> nul & popd )      
            rem 寫入失敗影片的的檔名 用於!lastfailname!
            echo !originalFilename[%userChoice%]! > .\program\lastfailname.txt
            rem 讀取失敗影片的的檔名 用於!lastfailname!
            set /p "templastfail=" < .\program\lastfailname.txt
            set "lastfailname=!templastfail:~0,-1!" & rem !variable:~start,length!
            echo 讀取的原始檔:　"!templastfail!" > nul
            echo 刪除字符串的最後一個字元:　"!lastfailname!" > nul
                rem 計算regenGIF failcount
                set /a "failcount+=1"
                if !Multigenfuncation_start! == true ( 
                    if !failcount! gtr 4 (
                    ren "GIF_generatoring_DONT-DEL.mp4" "!originalFilename[%userChoice%]!.mp4"    
                    cls
                        echo  !originalFilename[%userChoice%]!.gif 生成失敗，達到壓縮次數上限！
                        echo ──────────────────────────────────────────────────────────────────────────────────
                        echo  原始影片 !originalFilename[%userChoice%]!.mp4 已保留未刪除
                        echo  最後一次壓縮到:!sizeInMB!.!decimal!?
                        echo  請嘗試替換影片檔案，或縮短影片長度；改變解析度
                        echo ────────────────────────────────────────────────────────────────────────────────── 
                            timeout /t 10 > nul
                            del /Q "!lockFile!" 2>nul
                            del /Q .\program\lastfailname.txt 2>nul
                                exit
                ) else (
                rem 重跑regen Multi迴圈
                        goto :failGIF 
                    )
                )

                if !Multigenfuncation_start! == false (
                    if !mp4count! == 1 (
                        cls
                            echo  !originalFilename[%userChoice%]!.gif 生成失敗，達到壓縮次數上限！
                            echo ──────────────────────────────────────────────────────────────────────────────────
                            echo  原始影片 !originalFilename[%userChoice%]!.mp4 已保留未刪除
                            echo  最後一次壓縮到:!sizeInMB!.!decimal!?
                            echo  請嘗試替換影片檔案，或縮短影片長度；改變解析度
                            echo ────────────────────────────────────────────────────────────────────────────────── 
                                timeout /t 10 > nul
                                del /Q "!lockFile!" 2>nul
                                del /Q .\program\lastfailname.txt 2>nul
                                    exit
                    )
                )

:final
rem 寫入使用者選擇的檔名
echo !originalFilename[%userChoice%]! > .\program\originalFilename[1].txt
ping 127.0.0.1 -n 1 -w 10 >nul & rem 不可刪除的延遲否則會因為過快而出錯
    if !mp4Count! == 0 ( ping 127.0.0.1 -n 1 -w 100 > nul 
        del /Q !lockFile! )
        del /Q .\program\frame*.png
        del /Q GIF_generatoring_DONT-DEL.mp4 & rem 刪除原始影片檔
        rem 檢測mp4 count 是否剩下 '1' 部影片，如果是 關掉 Multigenfuncation_start=false
        echo mp4Count: !mp4Count! > nul
        if !mp4Count! == 1 ( 
            ping 127.0.0.1 -n 1 -w 100 > nul
            set "Multigenfuncation_start=false"
            )
        rem final 改名,final rename process
        ren "finalgif_DONT-DEL.gif" "!originalFilename[%userChoice%]!.gif"
cls
echo ────────────────────────────────────────────────────────
echo 正在等待暫存文件清除執行中... 
echo ────────────────────────────────────────────────────────
echo "成功生成" 檔案名稱為: "!originalFilename[%userChoice%]!.gif"
echo ────────────────────────────────────────────────────────────────────────────
echo 重新執行中...
rem false=goto Multigenerator迴圈
if !Multigenfuncation_start! == true ( 
        goto :Multigenfuncation 
        )
goto :checkMP4 & rem end