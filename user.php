<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perpustakaan</title>

    <link rel="stylesheet" href="assets/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="wrapper">
        <!-- NAVBAR -->
        <?php include 'inc/navbar.php' ?>

        <!-- TABLE -->
        <div class="mt-5 container">
            <div class="row">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Data User</legend>
                        </br>
                        </br>
                        <div class="button-action">
                            <a href="" class="btn btn-primary">Add</a>
                            <a href="" class="btn btn-warning">Recycle</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Level</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Settings</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <td>1</td>
                                    <td>Admin</td>
                                    <td>Admin</td>
                                    <td>admin@gmail.com</td>
                                    <td>Edit | Delete</td>
                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <footer class="text-center border-top fixed-bottom p-3">Copyright &copy; 2024 PPKD - Jakarta Pusat</footer>
    </div>

</body>

</html>