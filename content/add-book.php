<?php
// include "controller/add-book-control.php";
// BUAT ADD BOOK
if (isset($_POST['add'])) {
  $title = $_POST['title'];
  $publisher = $_POST['publisher'];
  $year_of_publication = $_POST['year_of_publication'];
  $author = $_POST['author'];

  $queryInsert = mysqli_query(
      $connection,
      "INSERT INTO books (title, publisher, year_of_publication, author) VALUES ('$title', '$publisher', '$year_of_publication', '$author')"
  );
  header("location: ?pg=book");
};


// include "controller/delete-book-control.php";
// BUAT DELETE USER
if (isset($_GET['delete'])) {
  $id = $_GET['delete'];

  $queryDelete = mysqli_query($connection, "DELETE FROM books WHERE id='$id'");
  header("location: ?pg=book");
};


// include "controller/edit-book-control.php";
// BUAT EDIT USER
if (isset($_GET['edit'])) {
  $id = $_GET['edit'];
  $queryEdit = mysqli_query($connection, "SELECT * FROM books WHERE id='$id'");
  $rowEdit = mysqli_fetch_assoc($queryEdit);
};

if (isset($_POST['edit'])) {
  $title = $_POST['title'];
  $publisher = $_POST['publisher'];
  $year_of_publication = $_POST['year_of_publication'];
  $author = $_POST['author'];

  $update = mysqli_query(
      $connection,
      "UPDATE books SET title='$title', publisher='$publisher', year_of_publication='$year_of_publication', author='$author' WHERE id='$id'"
  );
  header("location: ?pg=book");

  if (!$update) {
      echo "Update gagal";
  };
};
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
              <input type="text" class="form-control" name="title" placeholder="Masukkan kategori"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['title'] : '' ?>">
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Penerbit : </label>
              <input type="text" class="form-control" name="publisher" placeholder="Masukkan penerbit"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['publisher'] : '' ?>">
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Tahun Terbit : </label>
              <input type="text" class="form-control" name="year_of_publication" placeholder="Masukkan tahum terbit"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['year_of_publication'] : '' ?>">
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Penulis : </label>
              <input type="text" class="form-control" name="author" placeholder="Masukkan penulis"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['author'] : '' ?>">
            </div>
            <button type="submit" class="btn btn-primary" name="<?php echo isset($_GET['edit']) ? 'edit' : 'add' ?>">
              <?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?>
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>