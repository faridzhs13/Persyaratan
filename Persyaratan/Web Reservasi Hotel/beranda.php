<!DOCTYPE html>
<html>
<head>
<title>FARID</title>
	<meta charset="utf-8">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <style>
        /* Reset margin dan padding default */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Gaya untuk navbar */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        /* Gaya untuk tautan di dalam navbar */
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Gaya tautan saat dihover */
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>

<div class="navbar">
<a href="beranda.php">BERANDA</a>
    <a href="prom.php">KAMAR</a>
    <a href="gabungan.php">DATA</a>
    <a href="login.php">LOGIN</a>
    
</div>

</body>
</html>
  

              
          
  
  
      <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Promosi Hotel</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: grey;
  }
  header {
    background-color: white;
    color: black;
    text-align: center;
    padding: 1em;
  }
  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2em;
  }
  .promo {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 1em;
    margin-bottom: 1em;
    display: flex;
  }
  .promo img {
    max-width: 300px;
    margin-right: 1em;
  }
  .promo-content {
    flex: 1;
  }
</style>
</head>
<body>
<header>
  <h1>Promosi Hotel</h1>
</header>
<div class="container">
  <div class="promo">
    <img src="hotel.jpg" alt="Hotel Image 1">
    <div class="promo-content">
      <h2>Pengalaman Luar Biasa</h2>
      <p>Nikmati pengalaman menginap luar biasa di hotel kami. Fasilitas modern, pemandangan indah, dan pelayanan terbaik menanti Anda.</p>
      
    </div>
  </div>
  <div class="promo">
    <img src="lobby.jpg" alt="Hotel Image 2">
    <div class="promo-content">
      <h2>Liburan Santai</h2>
      <p>Santai dan lepas penat dengan pemandangan laut yang menakjubkan. Fasilitas spa kami akan membuat Anda merasa segar kembali.</p>
      
    </div>
  </div>
  <!-- Tambahkan lebih banyak blok promo di sini -->
</div>

</body>
</html>
