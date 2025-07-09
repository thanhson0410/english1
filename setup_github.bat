@echo off
echo ========================================
echo    Upload to GitHub: english2025.git
echo ========================================
echo.

echo Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is NOT installed
    echo.
    echo Please follow these steps:
    echo 1. Download Git from: https://git-scm.com/download/windows
    echo 2. Install Git (choose default options)
    echo 3. Restart this Command Prompt/PowerShell
    echo 4. Run this script again
    echo.
    echo After installing Git, you can run: setup_github.bat
    pause
    exit /b 1
)

echo ✅ Git is installed
echo Git version: 
git --version
echo.

echo Current directory: %cd%
echo.

echo Checking if this is already a Git repository...
if exist ".git" (
    echo ✅ This is already a Git repository
    echo.
) else (
    echo Initializing new Git repository...
    git init
    if %errorlevel% neq 0 (
        echo ❌ Failed to initialize Git repository
        pause
        exit /b 1
    )
    echo ✅ Git repository initialized
    echo.
)

echo Checking Git user configuration...
for /f "delims=" %%i in ('git config --global user.name 2^>nul') do set git_name=%%i
for /f "delims=" %%i in ('git config --global user.email 2^>nul') do set git_email=%%i

if "%git_name%"=="" (
    echo.
    echo ⚠️  Git user name not configured
    set /p user_name="Enter your name for Git commits: "
    git config --global user.name "%user_name%"
    echo ✅ Git user name set to: %user_name%
) else (
    echo ✅ Git user name: %git_name%
)

if "%git_email%"=="" (
    echo.
    echo ⚠️  Git email not configured  
    set /p user_email="Enter your email for Git commits: "
    git config --global user.email "%user_email%"
    echo ✅ Git email set to: %user_email%
) else (
    echo ✅ Git email: %git_email%
)
echo.

echo Adding all files to Git staging area...
git add .
if %errorlevel% neq 0 (
    echo ❌ Failed to add files to staging area
    pause
    exit /b 1
)
echo ✅ All files added to staging area
echo.

echo Checking for changes to commit...
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo ℹ️  No new changes to commit
) else (
    echo Committing changes...
    git commit -m "English Grammar Learning Website - Upload to GitHub %date% %time%"
    if %errorlevel% neq 0 (
        echo ❌ Failed to commit changes
        pause
        exit /b 1
    )
    echo ✅ Changes committed successfully
)
echo.

echo Setting up remote repository...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/thanhson0410/english1.git
if %errorlevel% neq 0 (
    echo ❌ Failed to add remote repository
    pause
    exit /b 1
)
echo ✅ Remote repository set: https://github.com/thanhson0410/english1.git
echo.

echo Setting main branch...
git branch -M main
echo ✅ Branch set to main
echo.

echo Pushing to GitHub...
echo This may require your GitHub username and password/token...
git push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo ⚠️  Push failed. Common reasons:
    echo   1. Repository doesn't exist on GitHub
    echo   2. Authentication failed (need username/password or token)
    echo   3. Network connection issues
    echo.
    echo Solutions:
    echo   1. Make sure repository exists: https://github.com/thanhson0410/english2025
    echo   2. Use your GitHub username and Personal Access Token as password
    echo   3. Or try: git push -u origin main (manually)
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo        🎉 SUCCESS! Uploaded to GitHub
echo ========================================
echo.
echo Your English Grammar Website is now available at:
echo 📋 Repository: https://github.com/thanhson0410/english1
echo.
echo To enable GitHub Pages:
echo 1. Go to: https://github.com/thanhson0410/english1/settings/pages
echo 2. Under "Source", select "Deploy from a branch"
echo 3. Choose branch "main" and folder "/ (root)"
echo 4. Click "Save"
echo.
echo Your website will be live at:
echo 🌐 https://thanhson0410.github.io/english1/
echo.
echo ✅ Project includes:
echo   - 18 complete grammar lessons
echo   - 21 interactive games
echo   - Mobile-optimized design
echo   - Dark mode support
echo   - Comprehensive documentation
echo.
pause
