<?php
// BUAT ADD BOOK
if (isset($_POST['add'])) {
    $category = $_POST['category'];
    $shelf_location = $_POST['shelf_location'];
    $title = $_POST['title'];
    $author = $_POST['author'];
    $publisher = $_POST['publisher'];
    $year_of_publication = $_POST['year_of_publication'];
    $description = $_POST['description'];
    $stock = $_POST['stock'];

    $queryInsert = mysqli_query(
        $connection,
        "INSERT INTO books (category, shelf_location, title, author, publisher, year_of_publication, description, stock) VALUES ('$category', '$shelf_location', '$title', '$author', '$publisher', '$year_of_publication', '$description', '$stock')"
    );
    header("location: ?pg=book");
};