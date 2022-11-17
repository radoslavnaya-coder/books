<?php
    session_start();
    require_once 'connect.php';

    $login = $_POST['login'];
    $password = $_POST['password'];

    $check_user = mysqli_query($connect, "SELECT * FROM `users` WHERE `login` = '$login' AND `password` = '$password'");

    if(mysqli_num_rows($check_user)>0){
        $user = mysqli_fetch_assoc($check_user);
        header('Location: ../adminpanel.html');
    }
    else{
        header('Location: ../index.html');
    }

    //genres generator

    $check_genre = mysqli_query($connect, "SELECT `genre_name` FROM `genre`");
    $genre = mysqli_fetch_assoc($check_genre);

