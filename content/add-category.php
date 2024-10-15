<?php
// include "controller/add-category-control.php";
if (isset($_POST['add'])) {
  $category_name = $_POST['category_name'];

  $queryInsert = mysqli_query(
    $connection,
    "INSERT INTO category_books (category_name) VALUES ('$category_name')");
  header("location: ?pg=category");
};


// include "controller/delete-category-control.php";
// BUAT DELETE CATEGORY
if (isset($_GET['delete'])) {
  $id = $_GET['delete'];

  $queryDelete = mysqli_query($connection, "DELETE FROM category_books WHERE id='$id'");
  header("location: ?pg=category");
};


// include "controller/edit-category-control.php";
// BUAT EDIT CATEGORY
if (isset($_GET['edit'])) {
  $id = $_GET['edit'];
  $queryEdit = mysqli_query($connection, "SELECT * FROM category_books WHERE id='$id'");
  $rowEdit = mysqli_fetch_assoc($queryEdit);
};

if (isset($_POST['edit'])) {
  $category_name = $_POST['category_books'];

  $update = mysqli_query(
    $connection,
    "UPDATE category SET category_name='$category_name' WHERE id='$id'");
  header("location: ?pg=category");

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
          <h3 class="card-title text-center"><?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?> Kategori
          </h3>
          <form class="" action="" method="post">
            <div class="form-group mb-3">
              <label for="" class="form-label">Name Kategori : </label>
              <input type="text" class="form-control" name="category_name" placeholder="Masukkan nama"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['category_name'] : '' ?>">
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