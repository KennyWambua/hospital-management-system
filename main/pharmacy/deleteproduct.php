<?php
include('connect.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $result = $db->prepare("DELETE FROM products WHERE product_id = :id");
    $result->bindParam(':id', $id);

    if ($result->execute()) {
        echo "success";
    } else {
        echo "error";
    }
} else {
    echo "No ID provided";
}
?>
