# Hướng dẫn di chuyển thư mục Zalo sang ổ đĩa khác

## Mục đích

Hướng dẫn này giúp bạn di chuyển các thư mục dữ liệu của Zalo từ ổ đĩa mặc định sang ổ đĩa khác (như ổ `D:\`) để tiết kiệm không gian trên ổ đĩa hệ thống hoặc vì lý do khác.

## Các bước thực hiện

### Bước 1: Tắt hẳn Zalo

Trước khi thực hiện, bạn cần tắt hoàn toàn ứng dụng Zalo. Phím tắt `Ctrl + Q`.

### Bước 2: Sao chép các thư mục Zalo sang ổ đĩa khác

Sau khi tắt Zalo, sao chép các thư mục sau sang ổ đĩa khác. Ví dụ, sao chép vào ổ `D:\Zalo`:

- **Thư mục 1**: `%localappdata%\ZaloPC`
- **Thư mục 2**: `%appdata%\ZaloData`
- **Thư mục 3**: `%userprofile%\Documents\Zalo Received Files`

### Bước 3: Xóa các thư mục gốc

Sau khi sao chép xong, hãy xóa tất cả các thư mục gốc của Zalo như đã liệt kê ở trên. Đảm bảo rằng bạn đã giữ lại bản sao chép trong thư mục `D:\Zalo`.

### Bước 4: Tạo liên kết biểu tượng (Junction Links)

`Lưu ý` Cần điền chính xác đường dẫn các thư mục, nếu không Zalo sẽ không thể mở lên và sử dụng được.

Mở Command Prompt (CMD) với quyền Admin, sau đó chạy lần lượt các lệnh sau để tạo liên kết biểu tượng (junction link) từ vị trí cũ của các thư mục Zalo đến vị trí mới:

```plaintext
mklink /j "%localappdata%\ZaloPC" "D:\Zalo\ZaloPC"
mklink /j "%appdata%\ZaloData" "D:\Zalo\ZaloApp"
mklink /j "%userprofile%\Documents\Zalo Received Files" "D:\Zalo\Zalo Received Files"
```

## Bạn có thể dùng file Zalo.cmd để chạy.

Mặc định các thư mục sẽ được lưu ở `D:\Zalo`. Nếu bạn lưu ở đường dẫn khác thì cần thay đổi nội dung bên dòng.

Download [Zalo.cmd](https://github.com/Hungnth/di-chuyen-zalo/blob/main/move-zalo-folder.cmd)
