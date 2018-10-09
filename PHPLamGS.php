<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<?php
// define variables and set to empty values
$tendangnhapErr = $matkhauErr = $hoErr = $tenErr = $ngaysinhErr = $gioitinhErr = $nguyenquanErr = $diachihientaiErr = $sodienthoaiErr = $emailErr = $anhtheErr = $trinhdoErr = $namtotnghiepErr = $chuyennganhErr = $truongErr  = $mondayErr = $lopdayErr = $thoigiandayErr = "";

$tendangnhap = $matkhau = $ho = $ten = $ngaysinh = $gioitinh = $nguyenquan = $diachihientai = $sodienthoai = $email = $anhthe = $trinhdo = $namtotnghiep = $chuyennganh = $truong = $uudiem = $monday = $lopday = $thoigianday = "";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
	// tên đăng nhập
	if (empty($_POST["$tendangnhap"])) {
    $tendangnhapErr = "Ten dang nhap is required";
  } else {
    $tendangnhap = test_input($_POST["tendangnhap"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$tendangnhap)) {
      $tendangnhapErr = "Only letters and white space allowed"; 
    }
  }  
  	// mật khẩu
  	if (empty($_POST["$matkhau"])) {
    $matkhauErr = "Mat khau is required";
  } else {
    $matkhau = test_input($_POST["matkhau"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$matkhau)) {
      $matkhauErr = "Only letters and white space allowed"; 
    }
  }  
  // họ
  if (empty($_POST["ho"])) {
    $hoErr = "Ho is required";
  } else {
    $ho = test_input($_POST["ho"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$ho)) {
      $hoErr = "Only letters and white space allowed"; 
    }
  }
  // tên
  if (empty($_POST["$ten"])) {
    $tenErr = "Ten is required";
  } else {
    $ten = test_input($_POST["ten"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$ten)) {
      $tenErr = "Only letters and white space allowed"; 
    }
  }
  // ngày sinh
  if (empty($_POST["ngaysinh"])) {
    $ngaysinhErr = "Ngay sinh is required";
  } else {
    $ngaysinh = test_input($_POST["ngaysinh"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$ngaysinh)) {
      $ngaysinhErr = "Only letters and white space allowed"; 
    }
  }
  // giới tính
  if (empty($_POST["gioitinh"])) {
    $gioitinhErr = "Gioi tinh is required";
  } else {
    $gioitinh = test_input($_POST["gioitinh"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$gioitinh)) {
      $gioitinhErr = "Only letters and white space allowed"; 
    }
  }
  // nguyên quán
  if (empty($_POST["$nguyenquan"])) {
    $nguyenquanErr = "Nguyen quan is required";
  } else {
    $nguyenquan = test_input($_POST["nguyenquan"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$nguyenquan)) {
      $nguyenquanErr = "Only letters and white space allowed"; 
    }
  }
  // địa chỉ hiện tại
  if (empty($_POST["diachihientai"])) {
    $diachihientaiErr = "Dia chi hien tai is required";
  } else {
    $diachihientai = test_input($_POST["diachihientai"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$diachihientai)) {
      $diachihientaiErr = "Only letters and white space allowed"; 
    }
  }
  
  // số điện thoại
  if (empty($_POST["sodienthoai"])) {
    $sodienthoaiErr = "so dien thoai is required";
  } else {
    $sodienthoai = test_input($_POST["sodienthoai"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$sodienthoai)) {
      $sodienthoaiErr = "Only letters and white space allowed"; 
    }
  }
  // email
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format"; 
    }
  }
  // ảnh thẻ
  if (empty($_POST["$anhthe"])) {
    $anhtheErr = "Anh the is required";
  } else {
    $anhthe = test_input($_POST["anhthe"]);
  }
  // trình độ
  if (empty($_POST["trinhdo"])) {
    $trinhdoErr = "Trinh do hien tai is required";
  } else {
    $trinhdo = test_input($_POST["trinhdo"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$trinhdo)) {
      $trinhdoErr = "Only letters and white space allowed"; 
    }
  }
    // năm tốt nghiệp
  if (empty($_POST["namtotnghiep"])) {
    $namtotnghiepErr = "Nam tot nghiep is required";
  } else {
    $namtotnghiep = test_input($_POST["namtotnghiep"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$namtotnghiep)) {
      $namtotnghiepErr = "Only letters and white space allowed"; 
    }
  }
  // chuyên ngành
  if (empty($_POST["$chuyennganh"])) {
    $chuyennganhErr = "Chuyen nganh is required";
  } else {
    $chuyennganh = test_input($_POST["chuyennganh"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$chuyennganh)) {
      $chuyennganhErr = "Only letters and white space allowed"; 
    }
  }
  // trường
  if (empty($_POST["truong"])) {
    $truongErr = "Truong is required";
  } else {
    $truong = test_input($_POST["truong"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$truong)) {
      $truongErr = "Only letters and white space allowed"; 
    }
  }
  
  // lớp dạy
  if (empty($_POST["$lopday"])) {
    $lopdayErr = "Lop day is required";
  } else {
    $lopday = test_input($_POST["lopday"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$lopday)) {
      $lopdayErr = "Only letters and white space allowed"; 
    }
  }
  // môn dạy
  if (empty($_POST["$monday"])) {
    $mondayErr = "Mon day is required";
  } else {
    $monday = test_input($_POST["monday"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$monday)) {
      $mondayErr = "Only letters and white space allowed"; 
    }
  }
  
  // thời gian dạy
  if (empty($_POST["$thoigianday"])) {
    $thoigiandayErr = "Thoi gian day is required";
  } else {
    $thoigianday = test_input($_POST["thoigianday"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$thoigianday)) {
      $thoigiandayErr = "Only letters and white space allowed"; 
    }
  }  
  
	// ưu điểm
  if (empty($_POST["$uudiem"])) {
    $uudiem = "";
  } else {
    $uudiem = test_input($_POST["uudiem"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
</body>
</html>