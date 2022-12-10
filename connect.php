<?php

    $connect = mysqli_connect('localhost','root','root','rp31books');

    // SELECT
    // `book`.`book_name` AS 'book_name',
    // `book`.`book_img` AS 'book_img',
    // `book`.`book_year` AS 'book_year',
    // `author`.`author_id` AS 'author_id',
    // `author`.`author_name` AS 'author_name',
    //  GROUP_CONCAT(`author`.`book_id` SEPARATOR ',') 
    //  FROM `book`, `author`
    //  WHERE `book`.`author_id` = `author`.`author_id`
    //  AND `book`.`book_id` = `author`.`book_id`
    //  GROUP BY `author`.`book_id` 
     