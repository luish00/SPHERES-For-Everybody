<?php

	// $var = $_POST['jason'];
	//$jason[] = json_decode($var);

	$rows = Array();
	$conn = mysql_connect('localhost', 'root', '');
	if(!$conn){
		die("error".mysql_error());
		
	}
	
	mysql_select_db('data');

	//$date = $_POST['date']
	$query = "SELECT * FROM info";

	$stm = mysql_query($query) or die ("error ".mysql_error());
	// $result = mysqli_query();

	//if(isset($var)){
		$rows[] = array("result" => "true", "error" => "nil error from php");
		// echo json_encode($jason);

		while($row = mysql_fetch_assoc($stm)){
			$rows[] = $row;
		}
	// }else{
		// $rows[] = array("result" => "false", "error" =>"jason no fount");
	// }

	echo json_encode($rows);

?>	