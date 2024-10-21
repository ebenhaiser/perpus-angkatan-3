<?php
if (isset($_POST['simpan'])) {
    $borrowing_number   = $_POST['borrowing_number'];
    $id_member    = $_POST['id_member'];
    $borrowing_date = $_POST['borrowing_date'];
    $return_date   = $_POST['return_date'];
    $id_book   = $_POST['id_book'];
    $status = "Di Pinjam";

    // sql = structur query language / DML = data manipulation language
    // select, insert, update, delete
    $insert = mysqli_query($connection, "INSERT INTO borrowing 
    (borrowing_number, id_member, borrowing_date, return_date, status) VALUES 
    ('$borrowing_number','$id_member','$borrowing_date','$return_date', '$status')");
    $id_borrowing = mysqli_insert_id($connection);

    foreach ($id_book as $key => $buku) {
        $id_book = $_POST['id_book'][$key];

        $insertDetail = mysqli_query($connection, "INSERT INTO borrowing_details
        (id_borrowing, id_book) VALUES ('$id_borrowing','$id_book')");
    }
    header("location:?pg=borrowing&delete=success");
}

$id = isset($_GET['detail']) ? $_GET['detail'] : '';
$queryPeminjam = mysqli_query(
    $connection,
    "SELECT members.member_name, borrowing.* 
    FROM borrowing LEFT JOIN members ON members.id = borrowing.id_member
    WHERE borrowing.id = '$id'"
);
$rowPeminjam = mysqli_fetch_assoc($queryPeminjam);

$queryDetailPinjam = mysqli_query($connection, "SELECT books.title, borrowing_details.* FROM borrowing_details LEFT JOIN books ON books.id = borrowing_details.id_book WHERE id_borrowing ='$id'");

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $delete = mysqli_query($connection, "UPDATE borrowing SET deleted_at = 1 WHERE id='$id'");
    header("location:?pg=borrowing&delete=success");
}

$queryBuku = mysqli_query($connection, "SELECT * FROM books");
$queryAnggota = mysqli_query($connection, "SELECT * FROM members");

$queryKodePnjm = mysqli_query($connection, "SELECT * FROM borrowing WHERE status ='Di Pinjam'");




?>
<div class="container">
  <div class="row">
    <div class="col-sm-12">
      <fieldset class="border border-black border-2 p-3 mt-5 shadow">
        <legend class="float-none w-auto px-3"><?php echo isset($_GET['detail']) ? 'Detail ' : 'Tambah' ?> Pengembalian
        </legend>
        <form action="" method="post">
          <div class="mb-3 row">
            <div class="col-sm-6">
              <div class="mb-3">
                <label for="" class="form-label">No Peminjaman</label>
                <select name="id_borrowing" id="id_borrowing" class="form-control">
                  <!-- data option ngambil dari tabel peminjaman -->
                  <option value="">--No Peminjam--</option>
                  <?php while ($rowPeminjaman = mysqli_fetch_assoc($queryKodePnjm)): ?>
                  <option value="<?php echo $rowPeminjaman['borrowing_number'] ?>">
                    <?php echo $rowPeminjaman['borrowing_number'] ?></option>
                  <?php endwhile ?>
                </select>
              </div>
            </div>
            <div class="col-sm-12">
              <div class="card">
                <div class="card-header">
                  Data Peminjam
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-3">
                        <label for="" class="form-label">No Peminjaman</label>
                        <input type="text" readonly id="borrowing_number" class="form-control">
                      </div>
                      <div class="mb-3">
                        <label for="" class="form-label">Tanggal Peminjaman</label>
                        <input type="text" readonly id="borrowing_date" class="form-control">
                      </div>
                      <div class="mb-3">
                        <label for="" class="form-label">Denda</label>
                        <input type="text" readonly id="charge" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-3">
                        <label for="" class="form-label">Nama Anggota</label>
                        <input type="text" readonly id="member_name" class="form-control">
                      </div>
                      <div class="mb-3">
                        <label for="" class="form-label">Tanggal Pengembalian</label>
                        <input type="text" readonly id="return_date" class="form-control">
                      </div>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- table data dari query dengan php -->

          <!-- ini table data dari js -->
          <table id="table-returning" class="table table-bordered">
            <thead>
              <tr>
                <th>Nama Buku</th>
              </tr>
            </thead>
            <tbody class="table-row">
            </tbody>
          </table>
          <div class="mt-3">
            <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
          </div>
        </form>
      </fieldset>
    </div>
  </div>
</div>