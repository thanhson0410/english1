# 🚀 Quick Setup Guide

## Tóm tắt nhanh các bước upload lên GitHub

### 📋 Prerequisites (Điều kiện tiên quyết)
1. **Tải và cài đặt Git**: https://git-scm.com/download/windows
2. **Tạo tài khoản GitHub**: https://github.com (nếu chưa có)
3. **Restart PowerShell/Command Prompt** sau khi cài Git

### 🔧 Option 1: Sử dụng Script tự động (Khuyến nghị)
1. Double-click vào file `setup_git.bat`
2. Làm theo hướng dẫn trên màn hình
3. Script sẽ tự động:
   - Kiểm tra Git
   - Khởi tạo repository
   - Add và commit files
   - Hướng dẫn kết nối GitHub

### ⚡ Option 2: Thực hiện thủ công
```powershell
# 1. Mở PowerShell trong thư mục Aptis
cd "d:\Python\Aptis"

# 2. Cấu hình Git (lần đầu)
git config --global user.name "Tên của bạn"
git config --global user.email "email@example.com"

# 3. Khởi tạo repo
git init

# 4. Add files
git add .

# 5. Commit đầu tiên
git commit -m "Initial commit: English Grammar Learning Website"

# 6. Kết nối GitHub (sau khi tạo repo trên GitHub.com)
git remote add origin https://github.com/USERNAME/REPO-NAME.git
git branch -M main
git push -u origin main
```

### 🌐 Tạo GitHub Repository
1. Đăng nhập GitHub.com
2. Click "+" → "New repository"
3. Tên: `english-grammar-website`
4. Chọn "Public"
5. **KHÔNG check** "Initialize with README"
6. Click "Create repository"
7. Copy URL repository

### 📱 Kích hoạt GitHub Pages
1. Vào Settings của repository
2. Scroll xuống "Pages"
3. Source: "Deploy from branch"
4. Branch: "main", Folder: "/ (root)"
5. Save

**Website URL**: `https://USERNAME.github.io/english-grammar-website/`

### 🔄 Update website sau này
```powershell
git add .
git commit -m "Mô tả thay đổi"
git push origin main
```

### 📁 Files đã tạo
- ✅ `README.md` - Mô tả project chính thức
- ✅ `GITHUB-GUIDE.md` - Hướng dẫn chi tiết
- ✅ `setup_git.bat` - Script tự động setup
- ✅ `.gitignore` - Loại trừ files không cần
- ✅ `start_server.py` - Test local
- ✅ `README-MOBILE.md` - Hướng dẫn mobile

### ❗ Troubleshooting nhanh
- **Git not recognized**: Cài đặt Git và restart terminal
- **Push failed**: Kiểm tra URL repo và authentication
- **Pages not working**: Đảm bảo file index.html ở root
- **Mobile issues**: Xem README-MOBILE.md

### 📞 Support Files
- `GITHUB-GUIDE.md` - Hướng dẫn đầy đủ
- `README-MOBILE.md` - Hướng dẫn mobile chi tiết
- `mobile-guide.html` - Hướng dẫn mobile dạng web

---
**Ready to go! 🎯**
