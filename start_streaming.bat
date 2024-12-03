@echo on
:: Streaming Setup Script
:: This script starts AudioRelay and OBS in the correct order for streaming
:: Make sure both programs are installed in their default locations

echo Starting streaming setup...

:: Start AudioRelay
echo Starting AudioRelay...
start "" "C:\Program Files (x86)\AudioRelay\AudioRelay.exe"

:: Wait 5 seconds for AudioRelay to initialize
echo Waiting for AudioRelay to initialize...
timeout /t 5

:: Change to OBS directory and start OBS
echo Starting OBS...
cd /d "C:\Program Files\obs-studio\bin\64bit"
start "" obs64.exe

echo Setup complete!
pause
