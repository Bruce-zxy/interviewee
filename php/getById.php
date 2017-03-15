<?php
header('Access-Control-Allow-Origin:*');
header("Content-Type:application/json");

@$id = $_REQUEST['id'];
$table = $_GET["table"];
if (empty($id)) {
	echo '[]';
	return;
}

$conn = mysqli_connect('localhost', 'root', '', 'test');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);

$sql = "SELECT ID,Title,Detailed,Comment,Reading,Favorite,comm_num,img_url FROM $table WHERE ID=$id";
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