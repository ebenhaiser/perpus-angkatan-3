<div class="menu border-bottom border-black">
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item <?php echo isset($_GET['dashboard']) ? ' fw-bold' : '' ?>">
            <a class="nav-link" href="?pg=dashboard">Beranda</a>
          </li>
          <li class="nav-item <?php echo isset($_GET['user']) ? ' fw-bold' : '' ?>">
            <a class="nav-link" href="?pg=user">Akun</a>
          </li>
          <li class="nav-item <?php echo isset($_GET['level']) ? ' fw-bold' : '' ?>">
            <a class="nav-link" href="?pg=level">Level</a>
          </li>
          <li class="nav-item <?php echo isset($_GET['category']) ? ' fw-bold' : '' ?>">
            <a class="nav-link" href="?pg=category">Kategori</a>
          </li>
          <li class="nav-item <?php echo isset($_GET['book']) ? ' fw-bold' : '' ?>">
            <a class="nav-link" href="?pg=book">Buku</a>
          </li>
          <li class="nav-item <?php echo isset($_GET['borrowing']) ? ' fw-bold' : '' ?>">
            <a class="nav-link" href="?pg=borrowing">Peminjaman</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="btn btn-danger" href="actionLogout.php">keluar</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</div>