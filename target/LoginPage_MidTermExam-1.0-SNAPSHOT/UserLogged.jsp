<%@ page language="java"
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="com.example.loginpage_midtermexam.usermodel.UserBean"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=windows-1256">
    <title> User Logged Successfully </title>

    <style>
        .img-container {
            text-align: center;
        }
    </style>

</head>

<body>
    <div class="img-container">
        <img src="https://cdn.dribbble.com/users/2173054/screenshots/8143113/media/efac575209f0af0baf95c445995b33e6.gif" alt="avatar" class="avatar">
        <h2> Welcome ${firstname} ${lastname} ! </h2>
    </div>
</body>

</html>