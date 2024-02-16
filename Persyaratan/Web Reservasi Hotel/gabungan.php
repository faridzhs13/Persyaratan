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
<html>
<head>
    <title>Data Tabel</title>
    <style>
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

    /* Gaya untuk tabel */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #f2f2f2;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: left;
    }

    tr:nth-child(even) {
        background-color: #ddd; /* Warna latar belakang baris genap */
    }

    .add-button {
        background-color: #4CAF50;
        color: white;
        padding: 5px 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none; /* Hapus underline */
    }
</style>


    </style>
</head>
<body>
    
<?php
// Koneksi ke database MySQL
$servername = "localhost"; // Ganti dengan hostname server MySQL Anda
$username = "root"; // Ganti dengan username MySQL Anda
$password = ""; // Ganti dengan password MySQL Anda
$database = "hotel"; // Ganti dengan nama database Anda

$conn = new mysqli($servername, $username, $password, $database);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Query untuk mengambil data dari view
$sql = "SELECT * FROM vtamu";
$result = $conn->query($sql);

?>

<h1>Data Tabel</h1>
<table border="1">
    <tr>
        <th>no_identitas</th>
        <th>nama_tamu</th>
        <th>tanggal_lahir</th>
        <th>nomer_hp</th>
        <th>tgl_reservasi</th>
        <th>tgl_checkin</th>
        <th>tgl_checkout</th>
        <th>jumlah_hari</th>
        <th>status</th>
         <!-- Tambah kolom Action -->
    </tr>
    <?php
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["no_identitas"] . "</td>";
            echo "<td>" . $row["nama_tamu"] . "</td>";
            echo "<td>" . $row["tanggal_lahir"] . "</td>";
            echo "<td>" . $row["nomer_hp"] . "</td>";
            echo "<td>" . $row["tgl_reservasi"] . "</td>";
            echo "<td>" . $row["tgl_checkin"] . "</td>";
            echo "<td>" . $row["tgl_checkout"] . "</td>";
            echo "<td>" . $row["jumlah_hari"] . "</td>";
            echo "<td>" . $row["status"] . "</td>";
            
            // Tambahkan tautan aksi "Tambah Data" di sebelah "tanggal_check_out"
            
            
            echo "</tr>";
        }
        
        
    } else {
        echo "<tr><td colspan='4'>Tidak ada data dalam view.</td></tr>";
    }
    ?>
</table>

</body>
</html>

<?php
// Tutup koneksi
$conn->close();
?>
