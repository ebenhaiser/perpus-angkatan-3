<?php
// BUAT EDIT USER
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $queryEdit = mysqli_query($connection, "SELECT * FROM books WHERE id='$id'");
    $rowEdit = mysqli_fetch_assoc($queryEdit);
};

if (isset($_POST['edit'])) {
    $category = $_POST['category'];
    $shelf_location = $_POST['shelf_location'];
    $title = $_POST['title'];
    $author = $_POST['author'];
    $publisher = $_POST['publisher'];
    $year_of_publication = $_POST['year_of_publication'];
    $description = $_POST['description'];
    $stock = $_POST['stock'];

    $update = mysqli_query(
        $connection,
        "UPDATE books SET category='$category', shelf_location='$shelf_location', title='$title', author='$author', publisher='$publisher', year_of_publication='$year_of_publication', description='$description', stock='$stock'  WHERE id='$id'"
    );
    header("location: ?pg=book");

    if (!$update) {
        echo "Update gagal";
    };
};