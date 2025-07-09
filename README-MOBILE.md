# 📱 Hướng dẫn chạy website trên điện thoại

## 🚫 Vấn đề thường gặp:
Khi copy file HTML vào điện thoại và mở trực tiếp, các link không hoạt động do:
- Trình duyệt mobile chặn file:// protocol
- Đường dẫn tương đối không được hỗ trợ
- Bảo mật file system

## ✅ Giải pháp:

### Phương pháp 1: Upload lên hosting miễn phí
1. **GitHub Pages** (Khuyến nghị):
   - Tạo repository trên GitHub
   - Upload tất cả file
   - Bật GitHub Pages trong Settings
   - Truy cập qua link: https://username.github.io/repository-name

2. **Netlify**:
   - Đăng ký tài khoản Netlify
   - Drag & drop thư mục website
   - Nhận link tức thì

3. **Vercel**:
   - Tương tự Netlify
   - Hỗ trợ drag & drop

### Phương pháp 2: Sử dụng app web server trên mobile
1. **Android**: Cài app "Simple HTTP Server"
2. **iOS**: Cài app "HTTP Server"
3. Đặt file vào thư mục server và chạy

### Phương pháp 3: Chạy từ máy tính, truy cập từ điện thoại
```bash
# Trên máy tính, mở terminal/cmd tại thư mục Aptis:
python -m http.server 8000
# Hoặc nếu có Node.js:
npx serve .
```
Trên điện thoại truy cập: http://[IP-máy-tính]:8000

## 🔧 Sửa lỗi đường dẫn (nếu cần):
Nếu vẫn gặp vấn đề, có thể cần sửa đường dẫn tuyệt đối thành tương đối.
