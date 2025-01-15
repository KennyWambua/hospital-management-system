<?php
include('connect.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $result = $db->prepare("DELETE FROM diagnosis WHERE id = :id");
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
