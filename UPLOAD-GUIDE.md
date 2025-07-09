# 🚀 Upload to GitHub: english1

## Repository: https://github.com/thanhson0410/english1.git

### 📋 Quick Steps

#### 1. Install Git (if not installed)
- Download: https://git-scm.com/download/windows
- Install with default settings
- Restart PowerShell/Command Prompt

#### 2. Run Auto Setup
- Double-click: `setup_github.bat`
- Follow on-screen instructions
- Enter your name and email when prompted

#### 3. GitHub Authentication
When prompted for credentials:
- **Username**: thanhson0410
- **Password**: Use Personal Access Token (NOT your GitHub password)

### 🔑 Create Personal Access Token
1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Set expiration: 30 days (or longer)
4. Check scope: ✅ **repo** (full repository access)
5. Click "Generate token"
6. **Copy the token** (save it somewhere safe)
7. Use this token as your password when Git asks

### 🌐 Enable GitHub Pages
After successful upload:
1. Go to: https://github.com/thanhson0410/english1/settings/pages
2. Source: "Deploy from a branch" 
3. Branch: **main**
4. Folder: **/ (root)**
5. Click "Save"

**Your website will be live at:**
🔗 **https://thanhson0410.github.io/english1/**

### ⚡ Manual Commands (if script fails)
```powershell
cd "d:\Python\Aptis"
git init
git add .
git commit -m "English Grammar Learning Website"
git remote add origin https://github.com/thanhson0410/english2025.git
git branch -M main
git push -u origin main
```

### 🔄 Future Updates
After making changes:
```powershell
git add .
git commit -m "Update description"
git push origin main
```

### 📁 What's Being Uploaded
- ✅ **18 Grammar Lessons** (B1-B2 level)
- ✅ **21 Interactive Games** 
- ✅ **Mobile-Optimized Design** (iPhone 15 Pro Max)
- ✅ **Dark Mode & Accessibility**
- ✅ **Complete Documentation**
- ✅ **Local Server Scripts**

### ❗ Troubleshooting
- **Git not recognized**: Install Git and restart terminal
- **Authentication failed**: Use Personal Access Token as password
- **Repository not found**: Make sure https://github.com/thanhson0410/english1 exists
- **Push failed**: Check internet connection and credentials

### 📞 Files Created
- `setup_github.bat` - Auto upload script
- `README.md` - Project documentation  
- `GITHUB-GUIDE.md` - Detailed GitHub guide
- `.gitignore` - Git ignore rules

---
**Ready to upload! Run `setup_github.bat` to get started! 🎯**
