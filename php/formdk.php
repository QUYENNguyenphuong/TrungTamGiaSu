<?php
/**
 * Created by PhpStorm.
 * User: Q
 * Date: 10/10/2018
 * Time: 6:26 AM
 */
// Nếu không phải là sự kiện đăng ký thì không xử lý
if (!isset($_POST['ten_tai_khoan'])){
    die('');
}

//Nhúng file kết nối với database
include('connection.php');

//Khai báo utf-8 để hiển thị được tiếng việt
header('Content-Type: text/html; charset=UTF-8');

//Lấy dữ liệu từ file dangky.php
$ten_tai_khoan="";
$username   = addslashes($_POST['ten_tai_khoan']);
$password   = addslashes($_POST['txtmatkhau']);
//Kiểm tra người dùng đã nhập liệu đầy đủ chưa
if (!$username || !$password)
{
    $ten_tai_khoan = "Vui lòng nhập tên tài khoản";
}

// Mã khóa mật khẩu
$password = md5($password);

//Kiểm tra tên đăng nhập này đã có người dùng chưa
if (mysql_num_rows(mysql_query("SELECT ten_tai_khoan FROM tai_khoan_gs WHERE ten_tai_khoan='$username'")) > 0){
    echo "Tên đăng nhập này đã có người dùng. Vui lòng chọn tên đăng nhập khác. <a href='javascript: history.go(-1)'>Trở lại</a>";
    exit;
}