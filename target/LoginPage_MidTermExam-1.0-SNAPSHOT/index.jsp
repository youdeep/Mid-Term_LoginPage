<%@ page language="java"
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            background-image: url("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg");
            background-position: absolute;
            background-repeat: no-repeat;
            background-size: cover;
            height: 120%;
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            opacity: 95%;
            display: inline-block;
            margin-left: auto;
            margin-right: auto;
            border: 3px solid #f1f1f1;
            background-color: lightskyblue;
            width: 400px;
            border-radius: 8px;
            padding: 20px 40px;
            box-shadow: 0 10px 25px rgba(92, 99, 105, .2);
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .content {
            max-width: 500px;
            margin: auto;
        }

        button {
            display: block;
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            border: none;
            cursor: pointer;
            width: 50%;
            box-shadow: aliceblue;

        }

        button:hover {
            opacity: 0.8;
        }

        .img-container {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

    </style>
</head>
<body>

<div class="content">

    <h2 align="center">Login Form</h2>

    <form action="login">
        <div class="img-container">
            <img src="https://c.tenor.com/6XJ9bKiuUUIAAAAC/ok-guy.gif" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label for="username"><b>Username</b></label>
            <input type="text" id="username" placeholder="Enter Username" maxlength="16" size="16" name="un" required>

            <label for="password"><b>Password</b></label>
            <input type="password" id="password" placeholder="Enter Password" maxlength="12" size="12" name="pw" required>

            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>

            <div class="container" align="center">
                <button type="submit">Login</button>
            </div>

        </div>
    </form>
</div>
</body>
</html>
