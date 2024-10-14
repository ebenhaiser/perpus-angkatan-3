<?php
include "controller/add-book-control.php";
include "controller/delete-book-control.php";
include "controller/edit-book-control.php";
?>

<div class="container">
    <div class="row">
        <div class="col-sm-5 mx-auto mt-5">
            <div class="card shadow">
                <div class="card-body">
                    <h3 class="card-title text-center"><?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?> Buku
                    </h3>
                    <form action="" method="post">
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Judul : </label>
                            <input type="text" class="form-control" name="category" placeholder="Masukkan kategori"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['category'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Lokasi rak : </label>
                            <input type="text" class="form-control" name="shelf_location"
                                placeholder="Masukkan lokasi rak"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['shelf_location'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Judul : </label>
                            <input type="text" class="form-control" name="title" placeholder="Masukkan judul"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['title'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Penulis : </label>
                            <input type="text" class="form-control" name="author" placeholder="Masukkan penulis"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['author'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Penerbit : </label>
                            <input type="text" class="form-control" name="publisher" placeholder="Masukkan penerbit"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['publisher'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Tahun Terbit : </label>
                            <input type="text" class="form-control" name="year_of_publication"
                                placeholder="Masukkan tahum terbit"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['year_of_publication'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Keterangan : </label>
                            <input type="text" class="form-control" name="description" placeholder="Masukkan keterangan"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['description'] : '' ?>">
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="form-label">Stok : </label>
                            <input type="text" class="form-control" name="stock" placeholder="Masukkan stok"
                                value="<?php echo isset($_GET['edit']) ? $rowEdit['stock'] : '' ?>">
                        </div>
                        <button type="submit" class="btn btn-primary"
                            name="<?php echo isset($_GET['edit']) ? 'edit' : 'add' ?>">
                            <?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>