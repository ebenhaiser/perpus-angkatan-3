<?php
// include "controller/add-borrowing-control.php";
// BUAT ADD BORROWING
if (isset($_POST['add'])) {
  $title = $_POST['title'];
  $publisher = $_POST['publisher'];
  $year_of_publication = $_POST['year_of_publication'];
  $author = $_POST['author'];
  $id_category = $_POST['id_category'];

  $queryInsert = mysqli_query(
      $connection,
      "INSERT INTO borrowing (id_category, title, publisher, year_of_publication, author) VALUES ('$id_category', '$title', '$publisher', '$year_of_publication', '$author')"
  );
  header("location: ?pg=borrowing&add=success");
};


// include "controller/delete-borrowing-control.php";
// BUAT DELETE BORROWING
if (isset($_GET['delete'])) {
  $id = $_GET['delete'];

  $queryDelete = mysqli_query($connection, "DELETE FROM borrowing WHERE id='$id'");
  header("location: ?pg=borrowing&delete=success");
};


// include "controller/edit-borrowing-control.php";
// BUAT EDIT BORROWING
if (isset($_GET['edit'])) {
  $id = $_GET['edit'];
  $queryEdit = mysqli_query($connection, "SELECT * FROM borrowing WHERE id='$id'");
  $rowEdit = mysqli_fetch_assoc($queryEdit);
};

if (isset($_POST['edit'])) {
  $title = $_POST['title'];
  $publisher = $_POST['publisher'];
  $year_of_publication = $_POST['year_of_publication'];
  $author = $_POST['author'];
  $id_category = $_POST['id_category'];

  $update = mysqli_query(
      $connection,
      "UPDATE borrowing SET title='$title', publisher='$publisher', year_of_publication='$year_of_publication', author='$author' WHERE id='$id'"
  );
  header("location: ?pg=borrowing&edit=success");

  if (!$update) {
      echo "Update gagal";
  };
};

$queryBook = mysqli_query($connection, "SELECT * FROM books");

?>

<div class="mt-5 container">
  <div class="row">
    <div class="col-sm-12">
      <div class="card shadow">
        <div class="card-body">
          <h3 class="card-title text-center">
          </h3>
          <fieldset class="border border-black border-2 p-3">
            <legend class="float-none w-auto px-3"><?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?> Peminjaman
            </legend>
            <form action="" method="post">
              <div class="mb-3 row">
                <div class="col-sm-4">
                  <div class="mb-3">
                    <label for="" class="form-label">No Peminjaman</label>
                    <input type="text" class="form-control" name="borrowing_number" value="" readonly>
                  </div>
                  <div class="mb-3">
                    <label for="" class="form-label">Tanggal Peminjaman</label>
                    <input type="date" class="form-control" name="borrowing_date" value="">
                  </div>
                  <div class="mb-3">
                    <label for="" class="form-label">Nama Buku</label>
                    <select name="" id="id-book" class="form-control">
                      <option value="">Pilih Buku</option>
                      <!-- ambil data buku dari table buku -->
                      <?php while ($rowBook = mysqli_fetch_assoc($queryBook)) : ?>
                      <option value="<?php echo $rowBook['id'] ?>">
                        <?php echo $rowBook['title'] ?>
                      </option>
                      <?php endwhile ?>
                    </select>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="mb-3">
                    <label for="" class="form-label">Nama Aggota</label>
                    <select name="id_member" id="" class="form-control">
                      <option value="">Pilih Anggota</option>
                      <option value=""></option>
                    </select>
                  </div>
                  <div class="mb-3">
                    <label for="" class="form-label">Tanggal Pengembalian</label>
                    <input type="date" class="form-control" name="return_date" value="">
                  </div>
                </div>
              </div>
              <div align="right" class="mb-3">
                <button type="button" id="add-row" class="btn btn-primary">
                  Tambah Row
                </button>
              </div>
              <table id="table-add-borrowing" class="table table-bordered">
                <thead>
                  <tr>
                    <th>Judul Buku</th>
                    <th>Settings</th>
                  </tr>
                </thead>
                <tbody class="table-row">
                </tbody>
              </table>
              <button type="submit" class="btn btn-primary" name="<?php echo isset($_GET['edit']) ? 'edit' : 'add' ?>">
                <?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?>
              </button>
            </form>
          </fieldset>
        </div>
      </div>
    </div>
  </div>
</div>