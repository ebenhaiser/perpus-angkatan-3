<?php
session_start();
session_regenerate_id();
include 'connection.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="wrapper">
        <?php include 'inc/navbar.php' ?>

        <div class="content">
            <?php
            if (isset($_GET['pg'])) {
                if (file_exists('content/' . $_GET['pg'] . '.php')) {
                    include 'content/' . $_GET['pg'] . '.php';
                }
            } else {
                include 'content/dashboard.php';
            }
            ?>
        </div>

        <!-- <footer class="text-center border-top fixed-bottom p-3">Copyright &copy; 2024 PPKD - Jakarta Pusat</footer> -->
    </div>

    <?php include 'inc/footer.php' ?>


</body>

</html>