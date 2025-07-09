# Hướng dẫn Upload Website lên GitHub

## 1. Cài đặt Git (nếu chưa có)

### Windows:
1. Tải và cài đặt Git từ: https://git-scm.com/download/windows
2. Chọn "Git Bash Here" và "Git GUI Here" trong quá trình cài đặt
3. Restart Command Prompt/PowerShell sau khi cài đặt

### Kiểm tra Git đã cài đặt:
```bash
git --version
```

## 2. Cấu hình Git (lần đầu sử dụng)

```bash
git config --global user.name "Tên của bạn"
git config --global user.email "email@example.com"
```

## 3. Khởi tạo và Upload project

### Bước 1: Khởi tạo Git repository
```bash
cd "d:\Python\Aptis"
git init
```

### Bước 2: Thêm tất cả files vào staging
```bash
git add .
```

### Bước 3: Commit lần đầu
```bash
git commit -m "Initial commit: English Grammar Learning Website"
```

### Bước 4: Tạo repository trên GitHub
1. Đăng nhập vào GitHub.com
2. Click "+" ở góc phải trên → "New repository"
3. Đặt tên repository: `english-grammar-website` (hoặc tên khác)
4. Chọn "Public" để có thể sử dụng GitHub Pages miễn phí
5. **KHÔNG** check "Initialize this repository with a README"
6. Click "Create repository"

### Bước 5: Kết nối với GitHub repository
```bash
git remote add origin https://github.com/USERNAME/REPOSITORY_NAME.git
git branch -M main
git push -u origin main
```

**Thay thế:**
- `USERNAME`: Tên GitHub username của bạn
- `REPOSITORY_NAME`: Tên repository vừa tạo

## 4. Kích hoạt GitHub Pages

1. Vào repository trên GitHub
2. Click "Settings" tab
3. Scroll xuống "Pages" trong sidebar trái
4. Trong "Source", chọn "Deploy from a branch"
5. Chọn branch "main" và folder "/ (root)"
6. Click "Save"

**Website sẽ có URL:** `https://USERNAME.github.io/REPOSITORY_NAME/`

## 5. Cập nhật website (khi có thay đổi)

```bash
git add .
git commit -m "Mô tả thay đổi"
git push origin main
```

## 6. Các lệnh Git hữu ích

### Kiểm tra trạng thái:
```bash
git status
```

### Xem lịch sử commit:
```bash
git log --oneline
```

### Khôi phục file:
```bash
git checkout -- filename.html
```

### Tạo branch mới:
```bash
git checkout -b feature-branch
```

## 7. Cấu trúc project hiện tại

```
english-grammar-website/
├── index.html                     # Trang chủ
├── style.css                      # CSS chính
├── .gitignore                     # File loại trừ Git
├── README-MOBILE.md               # Hướng dẫn mobile
├── mobile-guide.html              # Hướng dẫn mobile HTML
├── start_server.py                # Server Python
├── start_server.bat               # Script khởi động server
├── grammar-lessons/               # Thư mục bài học
│   ├── lessons.html              # Danh sách bài học
│   ├── present-simple.html       # Bài học thì hiện tại đơn
│   ├── present-continuous.html   # Bài học thì hiện tại tiếp diễn
│   ├── present-perfect.html      # Bài học thì hiện tại hoàn thành
│   ├── past-simple.html          # Bài học thì quá khứ đơn
│   ├── past-continuous.html      # Bài học thì quá khứ tiếp diễn
│   ├── past-perfect.html         # Bài học thì quá khứ hoàn thành
│   ├── future-tenses.html        # Bài học thì tương lai
│   ├── modal-verbs.html          # Bài học động từ khuyết thiếu
│   ├── conditionals.html         # Bài học câu điều kiện
│   ├── passive-voice.html        # Bài học câu bị động
│   ├── relative-clauses.html     # Bài học mệnh đề quan hệ
│   ├── articles.html             # Bài học mạo từ
│   ├── prepositions.html         # Bài học giới từ
│   ├── comparatives-superlatives.html # So sánh hơn/nhất
│   ├── gerunds-infinitives.html  # Danh động từ/nguyên mẫu
│   └── reported-speech.html      # Câu tường thuật
└── games/                        # Thư mục trò chơi
    ├── games.html                # Danh sách game
    ├── quiz.html                 # Quiz tổng hợp
    ├── present-simple-game.html  # Game thì hiện tại đơn
    ├── present-continuous-game.html
    ├── present-perfect-game.html
    ├── past-simple-game.html
    ├── past-continuous-game.html
    ├── past-perfect-game.html
    ├── future-tenses-game.html
    ├── modal-verbs-game.html
    ├── conditionals-game.html
    ├── passive-voice-game.html
    ├── relative-clauses-game.html
    ├── articles-game.html
    ├── prepositions-game.html
    ├── comparatives-superlatives-game.html
    ├── gerunds-infinitives-game.html
    ├── reported-speech-game.html
    ├── fill-in-the-blanks.html
    ├── sentence-builder.html
    └── grammar-master-challenge.html
```

## 8. Tính năng của website

### ✅ Hoàn thành:
- **18 bài học ngữ pháp** đầy đủ (B1-B2)
- **21 trò chơi luyện tập** tương tác
- **Responsive design** tối ưu cho iPhone 15 Pro Max
- **Dark mode** và chế độ high contrast
- **Accessibility** cho người khuyết tật
- **Hỗ trợ mobile** đầy đủ
- **Navigation** mượt mà giữa các bài học
- **Hệ thống đánh giá** và feedback

### 🎯 Tính năng nổi bật:
- Giao diện hiện đại, thân thiện
- Giải thích song ngữ Việt-Anh
- Bài tập đa dạng: trắc nghiệm, fill-in-blanks, sentence building
- Hệ thống điểm số và tiến độ
- Tối ưu cho thiết bị cảm ứng
- Hoạt động offline sau khi tải

## 9. Troubleshooting

### Lỗi Authentication khi push:
1. Sử dụng Personal Access Token thay vì password
2. Vào GitHub Settings → Developer settings → Personal access tokens
3. Tạo token mới với quyền "repo"
4. Dùng token này làm password khi Git yêu cầu

### Lỗi remote origin:
```bash
git remote remove origin
git remote add origin https://github.com/USERNAME/REPOSITORY_NAME.git
```

## 10. Liên hệ hỗ trợ

Nếu gặp vấn đề, có thể:
1. Kiểm tra GitHub documentation
2. Search Stack Overflow
3. Kiểm tra Git status và logs
4. Restart terminal/PowerShell

---

**Chúc bạn upload thành công! 🚀**
