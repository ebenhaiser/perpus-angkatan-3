<?php
session_start();
session_regenerate_id();
include 'connection.php';

$email = $_POST['email'];
$password = sha1($_POST['password']);

$queryLogin = mysqli_query(
    $connection,
    "SELECT * FROM users WHERE email='$email'"
);

if (mysqli_num_rows($queryLogin) > 0) {
    $rowUser = mysqli_fetch_assoc($queryLogin);
    if ($rowUser['password'] == $password) {
        $_SESSION['name'] = $rowUser['name'];
        $_SESSION['id '] = $rowUser['id'];
        header("Location: index.php?login=success");
    };
} else {
    header("Location: login.php?login=failed");
}