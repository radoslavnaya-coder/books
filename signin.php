<?php
    session_start();
    require_once 'connect.php';

    $login = $_POST['login'];
    $password = $_POST['password'];

    $check_admin = mysqli_query($connect, "SELECT * FROM `users` WHERE `login` = '$login' AND `password` = '$password'");

    if(mysqli_num_rows($check_admin)>0){
        $admin = mysqli_fetch_assoc($check_admin);

        $_SESSION['admin'] = [
            "login" => $admin['login'],
            "password" => $admin['password']
        ];
        header('Location: ../adminpanel.php');
    }
    else{
        $_SESSION['message'] = 'Access denied';
        header('Location: ../index.php');
    }

    //genres generator

    $check_genre = mysqli_query($connect, "SELECT `genre_name` FROM `genre`");
    $genre = mysqli_fetch_assoc($check_genre);

