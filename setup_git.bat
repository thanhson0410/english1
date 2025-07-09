@echo off
echo ========================================
echo    English Grammar Website - Git Setup
echo ========================================
echo.

echo Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/windows
    echo Then restart this script.
    pause
    exit /b 1
)

echo ✅ Git is installed
echo.

echo Current directory: %cd%
echo.

echo Checking if this is already a Git repository...
if exist ".git" (
    echo ✅ This is already a Git repository
    echo.
    goto :update_repo
) else (
    echo Initializing Git repository...
    git init
    if %errorlevel% neq 0 (
        echo ❌ Failed to initialize Git repository
        pause
        exit /b 1
    )
    echo ✅ Git repository initialized
    echo.
)

:setup_git_config
echo Checking Git configuration...
git config user.name >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ⚠️  Git user name not configured
    set /p git_name="Enter your name for Git commits: "
    git config --global user.name "%git_name%"
)

git config user.email >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ⚠️  Git email not configured
    set /p git_email="Enter your email for Git commits: "
    git config --global user.email "%git_email%"
)

echo ✅ Git configuration complete
echo.

:add_files
echo Adding all files to Git staging area...
git add .
if %errorlevel% neq 0 (
    echo ❌ Failed to add files
    pause
    exit /b 1
)
echo ✅ Files added to staging area
echo.

echo Checking for changes to commit...
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo ℹ️  No changes to commit
    goto :check_remote
)

echo Committing changes...
git commit -m "Update English Grammar Learning Website - %date% %time%"
if %errorlevel% neq 0 (
    echo ❌ Failed to commit changes
    pause
    exit /b 1
)
echo ✅ Changes committed successfully
echo.

:check_remote
echo Checking remote repository configuration...
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ⚠️  No remote repository configured
    echo.
    echo To connect to GitHub:
    echo 1. Create a new repository on GitHub.com
    echo 2. Copy the repository URL (https://github.com/username/repo-name.git)
    echo 3. Run this command:
    echo    git remote add origin https://github.com/username/repo-name.git
    echo 4. Run this script again to push changes
    echo.
    set /p setup_remote="Do you want to set up remote repository now? (y/n): "
    if /i "%setup_remote%"=="y" (
        set /p remote_url="Enter your GitHub repository URL: "
        git remote add origin !remote_url!
        if %errorlevel% neq 0 (
            echo ❌ Failed to add remote repository
            pause
            exit /b 1
        )
        echo ✅ Remote repository added
        goto :push_changes
    ) else (
        echo Repository is ready locally. Set up remote later if needed.
        goto :end
    )
) else (
    echo ✅ Remote repository already configured
    goto :push_changes
)

:update_repo
echo This is an existing repository. Checking for updates...
goto :add_files

:push_changes
echo.
echo Pushing changes to GitHub...
git push origin main
if %errorlevel% neq 0 (
    echo.
    echo ⚠️  Push failed. This might be because:
    echo   - This is the first push (try: git push -u origin main)
    echo   - You need to authenticate with GitHub
    echo   - The remote repository doesn't exist
    echo.
    echo Trying initial push...
    git push -u origin main
    if %errorlevel% neq 0 (
        echo ❌ Push failed. Please check:
        echo   1. GitHub repository exists
        echo   2. You have push permissions
        echo   3. Your authentication is set up
        echo.
        echo Manual steps:
        echo   git push -u origin main
        pause
        exit /b 1
    )
)

echo ✅ Successfully pushed to GitHub!
echo.

:end
echo ========================================
echo           🎉 Git Setup Complete!
echo ========================================
echo.
echo Your English Grammar Website is now:
echo ✅ Tracked in Git
echo ✅ Committed with latest changes
if exist ".git\refs\remotes\origin\main" (
    echo ✅ Pushed to GitHub
    echo.
    echo Next steps:
    echo 1. Enable GitHub Pages in your repository settings
    echo 2. Your website will be available at:
    echo    https://username.github.io/repository-name/
) else (
    echo ⚠️  Ready for GitHub (set up remote repository)
    echo.
    echo Next steps:
    echo 1. Create repository on GitHub.com
    echo 2. Run: git remote add origin [your-repo-url]
    echo 3. Run: git push -u origin main
    echo 4. Enable GitHub Pages
)
echo.
echo For detailed instructions, see GITHUB-GUIDE.md
echo.
pause
