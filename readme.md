# Truyện ATK - ỨNG DỤNG WEB ĐỌC TRUYỆN MIỄN PHÍ 

[![Platform](https://img.shields.io/badge/platform-PHP-blue
)](https://www.php.net/downloads.php)
[![Laguage](https://img.shields.io/badge/WEB-HTML-green
)](https://www.php.net/downloads.php)
[![Language](https://img.shields.io/badge/Style-CSS-red
)](https://developer.mozilla.org/vi/docs/Web/CSS)
[![Language](https://img.shields.io/badge/WEB-javascripts-9cf
)](https://www.php.net/downloads.php)
[![DB](https://img.shields.io/badge/DB-MYSQL-information
)](https://www.mysql.com/)


♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬♫♭♮♯♫♬
<h2> ✈ Công dụng, ứng dụng  </h2>
<h3> Công dụng </h3>

 - Tìm kiếm truyện theo tên theo tên, tác giả
 - Đăng ký tài khoản để thêm truyên yêu thích 
  
 <h3> Ứng dụng </h3>
 
 - Áp dụng cho các nhóm nhỏ, tổ chức trong việc chia sẻ tác phẩm truyện chữ miễn phí.
 - Những người yêu thích đọc truyện.
 
<h2>☝ Mục đích của bài toán</h2>

<h3> Đầu vào</h3>

- Tên truyện, tên tác giả, tên thể loại
- Email, tài khoản, mật khẩu người dùng 

<h3> Đầu ra </h3>

- Danh sách truyện
- Danh sách chương của 1 truyện
- Danh sách truyện thgeo dõi

<h2>⚙ Các bước cài đặt</h2>

- Bước 1: Clone Responsity này về
- Bước 2: Cài đặt Xampp 7.1.33 https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.1.33/xampp-windows-x64-7.1.33-1-VC14-installer.exe/download
- Bước 3: Cài Composer https://getcomposer.org/download/
- Bước 4: Mở thư mục xampp, tìm file xampp-control.exe, run Apache và MySql
- Bước 5: Vào thư mục vừa clone về, mở cmd tại thư mục vừa clone về lên
- Bước 6: Gõ lệnh composer install
- Bước 7: Gõ lệnh composer update
- Bước 8: Trong thư mục vừa clone về tạo file .env 
- Bước 9: Mở file .env.example sao chép toàn vộ vào file .env
- Bước 10: Tạo một database trên MySQL Xampp 
- Bước 10: Import file demotruyen.sql (trong thư mục vừa clonde về) vào database vừa tạo
- Bước 10: Chú ý thay đổi các dòng sau sao cho phù hợp với máy
<ul>
    <li>DB_CONNECTION=mysql</li>
        <li>    DB_HOST=127.0.0.1</li>
            <li>DB_PORT=3306</li>
            <li>DB_DATABASE=demotruyen // Tên database</li>
            <li>DB_USERNAME=root       // nhập tên user nếu có</li> 
            <li>DB_PASSWORD=          // Nhập mật khẩu nếu có</li>
                </ul>
- Bước 11: Trong thư mục vừa clone về mở cmd và chạy lệnh php artisan serve 
- Bước 12: Vào trình duyệt mở http://127.0.0.1:8000
- Bước 13: Nhấn Enter giao diện trang chủ sẽ hiện thỉ ra
<br>
-------------------- END -------------------------------
TK test:
- Tk ADMIN: anh@gmail.com / 12345678
- Tk USER:  anh1@gmail.com / 12345678
<h2>📑 Nội dung của bài toán </h2>

- Chức năng đã làm được:
<p>- Thiết kế giao diện: Trang chủ, Đăng ký, Đăng nhập, Trang đọc truyện</p>

[![vqyDqU.png](https://b.imge.to/2019/09/29/vqyDqU.png)](https://imge.to/i/vqyDqU)

<p>- Thao tác</p>
<ul>
    <li> Nhập tên truyện </li>
    <li> Chọn truyện muốn xem </li>
    <li> Đọc truyện bắt đầu từ chương bạn muốn</li>
    <li> Đặt truyện vào danh sách yêu thích ( k bắt buộc) </li>
</ul>

[![vAyYAf.png](https://c.imge.to/2019/12/12/vAyYAf.png)](https://imge.to/i/vAyYAf)

<h2>💻 Hướng phát triển cho bài toán</h2>

- Ưu tiên các truyện có nhiều lượt xem lên top ...
- Chia sẽ truyện lên các trang mạng xã hội
- Mục comment cho người đọc truyện
- Người dùng có thể upload tru
 

<h2>👦 Tác giả: </h3>
     
- **Nguyễn Tài Anh**  - Back End Developer (Laravel, Git Manager) -  [link to GitHub!](https://github.com/NguyenTaiAnh)
- **Trần Minh Tâm**   - Data Analysis (PHP, MySQL) -  [link to GitHub!](https://github.com/zdankz)
- **Nguyễn Văn Khải** - Front End Developper (HTML, CSS, Javascripts, Bootstrap) - [link to GitHub!](https://github.com/Nguyenkhai99vn)
   
   
   
