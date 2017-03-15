<?php
header('Access-Control-Allow-Origin:*');
header("Content-Type:application/json");

@$kw = $_REQUEST['kw'];
$table = $_GET["table"];
if (empty($kw)) {
	echo '[]';
	return;
}

$conn = mysqli_connect('localhost', 'root', '', 'test');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);

$sql = "SELECT ID,Title,Detailed,Comment,Reading,Favorite,comm_num FROM $table WHERE Title LIKE '%$kw%' OR Detailed LIKE '%$kw%'";
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