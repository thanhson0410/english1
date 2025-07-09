#!/usr/bin/env python3
"""
🌐 English Grammar Website Server
Chạy server đơn giản để test website trên local
"""

import http.server
import socketserver
import webbrowser
import socket
import sys
import os

def get_local_ip():
    """Lấy IP local để truy cập từ điện thoại"""
    try:
        # Kết nối tới Google DNS để lấy IP local
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except:
        return "localhost"

def main():
    PORT = 8000
    
    # Chuyển tới thư mục chứa website
    script_dir = os.path.dirname(os.path.abspath(__file__))
    os.chdir(script_dir)
    
    Handler = http.server.SimpleHTTPRequestHandler
    
    try:
        with socketserver.TCPServer(("", PORT), Handler) as httpd:
            local_ip = get_local_ip()
            
            print("🚀 English Grammar Website Server đang chạy!")
            print("=" * 50)
            print(f"📱 Truy cập từ máy tính: http://localhost:{PORT}")
            print(f"📱 Truy cập từ điện thoại: http://{local_ip}:{PORT}")
            print("=" * 50)
            print("📝 Hướng dẫn:")
            print("   1. Đảm bảo máy tính và điện thoại cùng mạng WiFi")
            print("   2. Mở trình duyệt trên điện thoại")
            print(f"   3. Nhập địa chỉ: http://{local_ip}:{PORT}")
            print("   4. Nhấn Ctrl+C để dừng server")
            print("=" * 50)
            
            # Tự động mở trình duyệt
            try:
                webbrowser.open(f'http://localhost:{PORT}')
            except:
                pass
                
            httpd.serve_forever()
            
    except KeyboardInterrupt:
        print("\n✅ Server đã dừng!")
    except Exception as e:
        print(f"❌ Lỗi: {e}")
        print("💡 Thử chạy với quyền admin hoặc đổi port khác")

if __name__ == "__main__":
    main()
