
$(document).ready(function () {
    // ĐĂNG NHẬP RIGHT MAIN
    // Button đăng nhâp
    $("#btn_login").click(function (e) {
        var name = $("#input_user_name").val();
        var pass = $("#input_password").val();
        if (name == "") {
            alert("Nhập tên đăng nhập!");
            $("#input_user_name").focus();
            return false;
        }
        else if (pass == "") {
            alert("Nhập mật khẩu!");
            $("#input_password").focus();
            return false;
        }
        return true;
    });
    // Gioi hạn kí tự
    $("#input_user_name").keypress(function () {
        var max_text = $("#input_user_name").val().length;
        if(max_text > 20) {
            alert("Tên đăng nhập không quá 20 kí tự");
            $("#input_user_name").val("");
        }
    });
    $("#input_password").keypress(function () {
        var max_text = $("#input_password").val().length;
        if(max_text > 10) {
            alert("Mật khẩu không quá 10 kí tự");
            $("#input_password").val("");
        }
    });

    // MODAL FORM ĐĂNG NHẬP
    var modal = document.getElementById('id01');
    // click bên ngoài form modal sẽ close
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };
    // button đăng nhập modal_form
    $("#modal_btn_login").click(function (e) {
        var modal_name = $("#modal_username").val();
        var modal_pass = $("#modal_password").val();
        if (modal_name == "") {
            alert("Nhập tên đăng nhập!");
            $("#modal_username").focus();
            return false;
        }
        else if (modal_pass == "") {
            alert("Nhập mật khẩu!");
            $("#modal_password").focus();
            return false;
        }
        return true;
    });
    // giới hạn kí tự name vs pass modal
    $("#modal_username").keypress(function () {
        var max_text = $("#modal_username").val().length;
        if(max_text > 20) {
            alert("Tên đăng nhập không quá 20 kí tự");
            $("#modal_username").val("");
        }
    });
    $("#modal_password").keypress(function () {
        var max_text = $("#modal_password").val().length;
        if(max_text > 10) {
            alert("Mật khẩu không quá 10 kí tự");
            $("#modal_password").val("");
        }

    });

    //



});

