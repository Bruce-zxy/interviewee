<?php

header('Access-Control-Allow-Origin:*');
header("Content-Type:application/json");

@$id = $_REQUEST['id'];
$table = $_GET["table"];
$like = $_GET["like"];
$comm = $_GET["comm_num"];
$title = $_GET["title"];
$comm_like = $_GET["comm_like"];
$comment = $_GET["comment"];
if (empty($id)) {
	echo '[]';
	return;
}

$conn = mysqli_connect('localhost', 'root', '', 'test');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);
if ($like) {
	$sql = "UPDATE $table SET Favorite = Favorite+1 WHERE ID=$id";
	mysqli_query($conn, $sql);
} else if ($comm_like) {
	$sql = "UPDATE comment SET comm_like = comm_like+1 WHERE comment = '$comment'";
	$result = mysqli_query($conn, $sql);
	echo $title;
} else if ($comm) {
	$sql = "UPDATE $table SET comm_num = comm_num+1 WHERE ID=$id";
	mysqli_query($conn, $sql);
} else {
	$sql = "UPDATE $table SET Reading = Reading+1 WHERE ID=$id";
	mysqli_query($conn, $sql);
}
?>