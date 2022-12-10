<?php
    session_start();
    if(!$_SESSION['admin']){
        header('Location: index.php');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="main.css" />
    <link type="image/x-con" href="/img/logo.png" rel="icon">
    <title>Bookbar Сайт для поиска книги</title>
    <style>
        form {
            margin: 6vh 0 3vh 0vw;
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
        .red {
            text-align: center;
            background: #F49347;
            color: white;
            width: 250px;
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
</head>
<body>
    <header>
        <a class="logout" href="/logout.php" class="logout">Выход <br /> -></a>
        <img class="logo" src="/img/logo.png" />
        <div>
            <img class="feed-img" src="/img/feedimg.jpg" />
            <div class="search">
                <a style="cursor:pointer"><img src="/img/search.png" onclick="search()" /></a>
                <input id="searchbar" type="search" placeholder="Например: Стивен Кинг" />
            </div>
            <div class="search-help__links">
                
            </div>
        </div>
    </header>
    <section>
        <a href="/add.php">
        <button class="create-button">
                <p>Добавить книгу</p>
        </button>
        </a>
        <div class="card_container">
            
        </div>
    </section>
    <!-- popup start -->
    <div id="zatemnenie">
        <div id="okno">
            <form  method="post" enctype="multipart/form-data">
                <a href="#" class="short close"></a>
                <div>
                    <p>Обложка</p>
                    <input id="bookimage" type="file" name="bookimage" style="color: white" required>
                    <p>Название книги</p>
                    <input id="name" type="text" name="name" required>
                    <p>Автор</p>
                    <select class="selected-author" required>
        
                    </select>
                </div>
                <div>
                    <p>Жанр</p>
                    <select class="selected-genre" name="" required>
        
                    </select>
                    <p>Год издания</p>
                    <input id="book_year" type="number" name="book_year" required>
                    <p>Описание книги</p>
                    <textarea id="script" name="script" required></textarea>
                </div>
                <button class="red" type="submit" onclick="updateBook(book_id)">Редактировать книгу</button>
            </form>
          <!-- Всплывающее окошко!<br> -->
          <!-- <a href="#" class="close">Закрыть окно</a> -->
        </div>
      </div>
      <!-- popup end -->
    <script src="adminpanelapi.js"></script>
</body>
</html>