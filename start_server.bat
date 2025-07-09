@echo off
echo.
echo 🚀 Starting English Grammar Website Server...
echo.

REM Chạy Python server
python start_server.py

REM Nếu Python không có, thử python3
if %ERRORLEVEL% NEQ 0 (
    echo Trying python3...
    python3 start_server.py
)

REM Nếu vẫn không được, thử Node.js
if %ERRORLEVEL% NEQ 0 (
    echo Trying Node.js serve...
    npx serve . -p 8000
)

REM Nếu tất cả đều fail
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ❌ Cannot start server. Please install Python or Node.js
    echo 💡 Alternative: Upload to GitHub Pages or Netlify
    echo.
    pause
)
