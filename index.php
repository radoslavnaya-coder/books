<?php
    session_start();
    if($_SESSION['admin']){
        header('Location: ../adminpanel.php');
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
</head>
<body>
    <header>
        <img class="logo" src="/img/logo.png" />
        <div>
            <img class="feed-img" src="/img/feedimg.jpg" />
            <div class="search">
                <a style="cursor: pointer;"><img onclick="search()" src="/img/search.png" /></a>
                <input id="searchbar" type="search" placeholder="Например: Стивен Кинг" />
            </div>
            <div class="search-help__links">
                
            </div>
        </div>
    </header>
    <section>
        <div class="card_container">
            
        </div>
    </section>
    <script src="withapi.js"></script>
</body>

</html>