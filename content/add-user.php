<?php
include "controller/add-user-control.php";
include "controller/delete-user-control.php";
include "controller/edit-user-control.php";
?>

<div class="container">
  <div class="row">
    <div class="col-sm-5 mx-auto mt-5">
      <div class="card shadow">
        <div class="card-body">
          <h3 class="card-title text-center"><?php echo isset($_GET['edit']) ? 'Atur' : 'Tambah' ?> User
          </h3>
          <form class="" action="" method="post">
            <div class="form-group mb-3">
              <label for="" class="form-label">Level : </label><br>
              <input <?php echo isset($_GET['edit']) ? ($rowEdit['level'] == "Admin") ? 'checked' : '' : '' ?>
                type="radio" name="level" value="Admin">Admin
              <br>
              <input <?php echo isset($_GET['edit']) ? ($rowEdit['level'] == "Member") ? 'checked' : '' : '' ?>
                type="radio" name="level" value="Member">Member
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Name : </label>
              <input type="text" class="form-control" name="name" placeholder="Masukkan nama"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['name'] : '' ?>">
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Email : </label>
              <input type="email" class="form-control" name="email" placeholder="Masukkan email"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['email'] : '' ?>">
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Password : </label>
              <input type="text" class="form-control" name="password" placeholder="Masukkan password" value="">
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Gender : </label><br>
              <input <?php echo isset($_GET['edit']) ? ($rowEdit['gender'] == "Male") ? 'checked' : '' : '' ?>
                type="radio" name="gender" value="Male">Male
              <br>
              <input <?php echo isset($_GET['edit']) ? ($rowEdit['gender'] == "Female") ? 'checked' : '' : '' ?>
                type="radio" name="gender" value="Female">Female
            </div>
            <div class="form-group mb-3">
              <label for="" class="form-label">Nomor Telepon : </label>
              <input type="text" class="form-control" name="phone_number" placeholder="Masukkan nomor telepon"
                value="<?php echo isset($_GET['edit']) ? $rowEdit['phone_number'] : '' ?>">
            </div>
            <button type="submit" class="btn btn-primary" name="<?php echo isset($_GET['edit']) ? 'edit' : 'add' ?>">
              <?php echo isset($gender['edit']) ? 'Atur' : 'Tambah' ?>
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>