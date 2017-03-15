<?php
header('Access-Control-Allow-Origin:*');
// header("Content-Type:application/json");

$title = $_GET["title"];
$time = $_GET["time"];
$comm = $_GET["comment"];
$add = $_GET["add"];
$table = $_GET["table"];
$ip = $_GET["ip"];
$browser = $_GET["browser"];
$sys = $_GET["sys"];
if (empty($title)) {
	echo '[]';
	return;
}

$conn = mysqli_connect('localhost', 'root', '', 'test');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);

if ($add) {
	$sql = "INSERT INTO comment (comment, time, ms_title, ip, browser, sys) VALUES ('$comm', '$time', '$title', '$ip', '$browser', '$sys')";
	mysqli_query($conn, $sql);
	$sql = "UPDATE $table SET comm_num = comm_num+1 WHERE Title='$title'";
	$result = mysqli_query($conn, $sql);
} else {
	$sql = "SELECT * FROM comment WHERE ms_title='$title'";
	$result = mysqli_query($conn, $sql);
}

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