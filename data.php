<?php
//setting header to json
header('Content-Type: application/json');

include('koneksi.php');
$query = sprintf("SELECT count(fp.customer_id) as total, f.judul FROM fakta_pendapatan fp JOIN film f ON fp.film_id=f.film_id GROUP by fp.film_id order by count(fp.customer_id) desc LIMIT 10");
$result = $koneksi->query($query);

$data = array();
foreach ($result as $row){
	$data[] = $row;
}

$result -> close();

print json_encode($data);
?>