<?php
header('Access-Control-Allow-Origin:*');
//header("Content-Type:application/json");

$table = $_GET["table"];
$title = $_GET["title"];
$detail = $_GET["detail"];
$url = $_GET["url"];
$date = $_GET["date"];
$table_name = array("jo_html5", "jo_css3", "jo_php", "jo_ajax", "jo_javascript", "jo_jquery", "jo_xml", "jo_aspnet");
$name = array("html5", "css3", "php", "ajax", "javascript", "jquery", "xml", "aspnet");
$i = 0;

$conn = mysqli_connect('localhost', 'root', '', 'test');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);
while ($table_name[$i]) {
	$sql = "SELECT ID FROM $table_name[$i] WHERE Title='$title'";
	$result = mysqli_query($conn, $sql);
	$output = array();
	while (true) {
		$row = mysqli_fetch_assoc($result);
		if (!$row) {break;}
		$output[] = $row;
	}
	if ($output[0] != null) {break;}
	;
	$i++;
}

if ($i == count($table_name)) {
	$sql = "INSERT INTO $table (Title,Detailed,img_url) VALUES ('$title','$detail','$url')";
	$result = mysqli_query($conn, $sql);
	echo $result;
} else {
	echo "题库中已经存在相同的题目！请在" . $name[$i] . "中查找该题！";
}

?>