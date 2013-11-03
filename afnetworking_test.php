<?php
header('Content-type: application/json');

// Connect to MYSQL and select the database
$conn = mysql_connect('localhost', 'root', 'root');

if (!$conn)
{
    die('Could not connect: '.mysql_error());
}

//select the database
$db_selected = mysql_select_db('Nuggdb', $conn);
if (!$db_selected) {
    die ('Can\'t use Nuggdb : ' . mysql_error());
}

//construct the select statement
$query = "select * from Members";

$content = array();

$branch_result = mysql_query($query);
while ($row = mysql_fetch_assoc($branch_result)) {
    $content[] = $row;
}

echo json_encode($content);

mysql_free_result($branch_result);
          
          
          
?>


