<?php
include "koneksi.php"; 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Daily Journal</title>
    <style>
        .dark-theme {
            background-color: #3b3b3b;
            color: rgb(255, 255, 255);
        }
        .dark-theme .card {
            background-color:rgb(255, 255, 255);
        }
        .dark-theme .hero{
          background-color:rgb(54, 75, 83);
        }
        .dark-theme .gallery{
          background-color:rgb(54, 75, 83);
        }
        .card-img-top {
        width: 100%; /* Mengatur lebar gambar agar sesuai dengan lebar kartu */
        height: 300px; /* Mengatur tinggi gambar */
        object-fit: cover; /* Memastikan gambar tidak terdistorsi */
        }
        .custom-carousel-img {
        width: 50%; /* Mengatur lebar gambar agar sesuai dengan lebar carousel */
        height: 800px; /* Mengatur tinggi gambar */
        object-fit: cover; /* Memastikan gambar tidak terdistorsi */
      }
      .hero{
        background-color: rgb(172, 231, 231);
      }
      .gallery{
        background-color: rgb(172, 231, 231);
      }
      .footer{
        background-color: rgb(40, 151, 151);
      }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg sticky-top" style="background-color: rgb(40, 151, 151);">
        <div class="container">
            <a class="navbar-brand fw-bold">Daily Journal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" href="index.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="article_user.php">Article</a></li>
                    <li class="nav-item"><a class="nav-link" href="gallery_user.php">Gallery</a></li>
                </ul>
                <div class="d-flex">
                    <button id="darkMode" class="btn btn-secondary m-2"><i class="bi bi-moon-stars-fill"></i></button>
                    <button id="lightMode" class="btn btn-info m-2"><i class="bi bi-sun-fill"></i></button>
                </div>
            </div>
        </div>
    </nav>
    <!---Navbar end-->

    <!-- article begin -->
    <section id="article" class="text-center p-5">
      <div class="container">
      <h1 class="fw-bold display-4 pb-3">ARTICLE</h1>
      <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
        <?php
        $sql = "SELECT * FROM articles ORDER BY tanggal DESC";
        $hasil = $conn->query($sql); 

        while($row = $hasil->fetch_assoc()){
        ?>
          <div class="col">
            <div class="card h-100">
              <img src="img/<?= $row["gambar"]?>" class="card-img-top" alt="..." />
              <div class="card-body">
                <h5 class="card-title"><?= $row["judul"]?></h5>
                <p class="card-text">
                  <?= $row["isi"]?>
                </p>
              </div>
              <div class="card-footer">
                <small class="text-body-secondary">
                  <?= $row["tanggal"]?>
                </small>
              </div>
            </div>
          </div>
          <?php
        }
        ?> 
      </div>
    </div>
    </section>
    <!---Article end-->

    <!---Footer--->
    <div class="footer">
      <div class="d-flex flex-column align-items-center text-center h2 p-2 text-dark">
        <div class="d-flex justify-content-center">
          <a href="https://www.instagram.com/fbrnhae/profilecard/?igsh=NzdtMmswaTgxMDFy" class="btn btn-light m-2">
            <i class="bi bi-instagram"></i>
          </a>
          <a href="mailto:111202315039@mhs.dinus.ac.id" class="btn btn-light m-2">
            <i class="bi bi-envelope-at"></i>
          </a>
          <a href="https://pin.it/5O3SRVu1Q" class="btn btn-light m-2">
            <i class="bi bi-pinterest"></i>
          </a>
          <a href="https://github.com/meganfbr" class="btn btn-light m-2">
            <i class="bi bi-github"></i>
          </a>
        </div>
        <div>
          <h6>credit by @meganfbr</h6>
        </div>
      </div>
    </div>
    <!----Footer End-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Tema gelap
        document.getElementById("darkMode").addEventListener("click", () => {
            document.body.classList.add("dark-theme");
        });

        //  Tema terang
        document.getElementById("lightMode").addEventListener("click", () => {
            document.body.classList.remove("dark-theme");
        });
    </script>
</body>
</html>
