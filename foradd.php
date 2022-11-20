<?php 
    require_once 'connect.php';
    $name = $_POST['book_name'];
    $author = $_POST['author_id'];
    $script = $_POST['book_script'];
    $book_year = $_POST['book_year'];
    $book_genre = $_POST['book_genre_id'];



        $path = 'img/' . time() . $_FILES['bookimage']['name'];
    if(!move_uploaded_file($_FILES['bookimage']['tmp_name'] . '../' . $path)){
        $_SESSION['message'] = 'Error for image cache';
        header('Location: ../add.html');
        }
        mysqli_query($connect, "INSERT INTO `book` (`book_id`, `book_img`, `book_name`, `author_id`, `book_script`, `book_year`, `book_genre_id`) 
        VALUES (NULL, '$path', '$name', '$author', '$script', '$book_year', '$book_genre') ')");
        $_SESSION['message'] = 'Книга добавлена';
        header('Location: ../adminpanel.html');
?>