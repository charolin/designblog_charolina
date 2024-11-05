<?php
// Menghubungkan ke database
include '../lib/koneksi.php';

// Memeriksa apakah ID postingan ada di URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Query untuk menghapus postingan berdasarkan ID
    $sql = "DELETE FROM author WHERE ID_AUTHOR = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);

    // Mengeksekusi query
    if ($stmt->execute()) {
        echo "<script>alert('Author berhasil dihapus'); window.location.href = 'author.php';</script>";
    } else {
        echo "Error: " . $conn->error;
    }

    // Menutup statement
    $stmt->close();
} else {
    echo "ID Author tidak diberikan.";
}

// Menutup koneksi
$conn->close();
?>
