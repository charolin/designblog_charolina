<?php
// Menghubungkan ke database
include '../lib/koneksi.php';

// Memeriksa apakah ID postingan ada di URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Query untuk menghapus postingan berdasarkan ID
    $sql = "DELETE FROM postingan WHERE ID_POST = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);

    // Mengeksekusi query
    if ($stmt->execute()) {
        echo "<script>alert('Postingan berhasil dihapus'); window.location.href = 'post.php';</script>";
    } else {
        echo "Error: " . $conn->error;
    }

    // Menutup statement
    $stmt->close();
} else {
    echo "ID postingan tidak diberikan.";
}

// Menutup koneksi
$conn->close();
?>
