<?php
header('Access-Control-Allow-Origin:*');
header("Content-Type:application/json");

$start = $_REQUEST['start'];
$table = $_GET["table"];
if (empty($start)) {
	$start = 0;
}
$count = 5;

$conn = mysqli_connect('localhost', 'root', '', 'test');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);

$sql = "SELECT * FROM $table ORDER BY ID DESC LIMIT $start,$count";
$result = mysqli_query($conn, $sql);

$output = [];
while (true) {
	$row = mysqli_fetch_assoc($result);
	if (!$row) {
		break;
	}
	$output[] = $row;
}

echo json_encode($output);

?>