<?php
// Menghubungkan ke database
include '../lib/koneksi.php';

// Memeriksa apakah ID postingan ada di URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Query untuk menghapus postingan berdasarkan ID
    $sql = "DELETE FROM pesan WHERE ID_PESAN = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);

    // Mengeksekusi query
    if ($stmt->execute()) {
        echo "<script>alert('Pesan berhasil dihapus'); window.location.href = 'kontak.php';</script>";
    } else {
        echo "Error: " . $conn->error;
    }

    // Menutup statement
    $stmt->close();
} else {
    echo "ID Pesan tidak diberikan.";
}

// Menutup koneksi
$conn->close();
?>
