<div class="menu border-bottom border-black">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item <?php echo isset($_GET['dashboard']) ? ' fw-bold' : '' ?>">
                        <a class="nav-link" href="?pg=dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item <?php echo isset($_GET['user']) ? ' fw-bold' : '' ?>">
                        <a class="nav-link" href="?pg=user">Manage Accounts</a>
                    </li>
                    <li class="nav-item <?php echo isset($_GET['book']) ? ' fw-bold' : '' ?>">
                        <a class="nav-link" href="?pg=book">Manage Books</a>
                    </li>
                </ul>
                <!-- <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form> -->
            </div>
        </div>
    </nav>
</div>