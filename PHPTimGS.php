<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<?php
// define variables and set to empty values
$hoErr = $tenErr =  $diachihientaiErr = $sodienthoaiErr = $emailErr = $songuoihocErr = $monhocErr = $hocluchientai = $lophocErr = $thoigianhocErr = "";

$ho = $ten =  $diachihientai = $sodienthoai = $email = $songuoihoc = $monhoc = $hocluchientai = $lophoc = $thoigianhoc = $yeucaukhac = "";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
	
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
  
  // lớp học
  if (empty($_POST["$lophoc"])) {
    $lophocErr = "Lop hoc is required";
  } else {
    $lophoc = test_input($_POST["lophoc"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$lophoc)) {
      $lophocErr = "Only letters and white space allowed"; 
    }
  }
  // số người học
  if (empty($_POST["$songuoihoc"])) {
    $songuoihocErr = "So nguoi hoc is required";
  } else {
    $songuoihoc = test_input($_POST["songuoihoc"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$songuoihoc)) {
      $songuoihocErr = "Only letters and white space allowed"; 
    }
  }
  // môn học
  if (empty($_POST["$monhoc"])) {
    $monhocErr = "Mon hoc is required";
  } else {
    $monhoc = test_input($_POST["monhoc"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$monhoc)) {
      $monhocErr = "Only letters and white space allowed"; 
    }
  }
  // học lực hiện tại
  if (empty($_POST["$hocluchientai"])) {
    $hocluchientaiErr = "Hoc luc hien tai is required";
  } else {
    $hocluchientai = test_input($_POST["hocluchientai"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$hocluchientai)) {
      $hocluchientaiErr = "Only letters and white space allowed"; 
    }
  }
  // thời gian học
  if (empty($_POST["$thoigianhoc"])) {
    $thoigianhocErr = "Thoi gian hoc is required";
  } else {
    $thoigianhoc = test_input($_POST["thoigianhoc"]);
    if (!preg_match("/^[a-zA-Z ]*$/",$thoigianhoc)) {
      $thoigianhocErr = "Only letters and white space allowed"; 
    }
  }  
  
	// yêu cầu khác
  if (empty($_POST["$yeucaukhac"])) {
    $yeucaukhac = "";
  } else {
    $yeucaukhac = test_input($_POST["yeucaukhac"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
<?php
echo "<h2>Your Input:</h2>";
echo $ho;
echo " ";
echo $ten;
echo "<br>";
echo $email;
echo "<br>";
echo $sodienthoai;
echo "<br>";
echo $songuoihoc;
?>
</body>
</html>