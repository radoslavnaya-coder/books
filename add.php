<?php
    session_start();
    if(!$_SESSION['admin']){
        header('Location: ../index.php');
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="image/x-con" href="/img/logo.png" rel="icon">
    <title>Bookbar Добавление книг</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url("img/admin-back.jpg") no-repeat;
        }

        form {
            margin: 24vh 0 3vh 29vw;
            display: inline-flex;
        }

        form p{
            color: white;
        }

        form input, select {
            margin: 1vh 2vw;
            padding-left: 2vw;
            width: 297px;
            height: 40px;
            border-radius: 100px;
            border: none;
            font-size: 18px;
            outline: none;
        }

        form textarea{
            margin: 1vh 2vw;
            padding-left: 0.5vw;
            width: 327px;
            height: 120px;
            border-radius: 3px;
            border: none;
            font-size: 18px;
            outline: none;
        }
        button {
            text-align: center;
            background-color: #F49347;
            color: white;
            width: 200px;
            height: 40px;
            margin-left: 16vw;
            margin-top: 50vh;
            border-radius: 100px;
            border: none;
            font-size: 18px;
            position: absolute;
        }

        form p {
            font-size: 18px;
        }
    </style>
    </style>
</head>
<body>
    <form action="adminpanel.php"  method="post" enctype="multipart/form-data">
        <div>
            <p>Обложка</p>
            <input id="bookimage" type="file" name="bookimage" style="color: white" required>
            <p>Название книги</p>
            <input id="name" type="text" name="name" required>
            <p>Автор</p>
            <select class="selected-author" required="required">

            </select>
            
        </div>
        <div>
            <p>Жанр</p>
            <select class="selected-genre" name="" required="required">

            </select>
            <p>Год издания</p>
            <input id="book_year" type="number" name="book_year" required>
            <p>Описание книги</p>
            <textarea id="script" name="script" required></textarea>
        </div>
        <button type="submit" onclick="addBook()">Добавить книгу</button>
    </form>
    <script src="foradd.js"></script>
</body>

</html>