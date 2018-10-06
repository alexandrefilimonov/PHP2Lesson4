<?php 
$connection = mysqli_connect("localhost","root","DeltaDental!","world");
$qtyCars=8;
$s="";
$s=strip_tags($_POST['hiddenValue']);
//echo "#".$s;
if ($s=="") {
	$s="1";
}
else {
	if((($s)+3)<$qtyCars) {
		$s+=3;
	}
}
$t='<table border=1><tr><td>Car:</td><td>Price:</td></tr>';
$sql = "select * from shop where id>=".$s." AND id<".($s+3);
$res = mysqli_query($connection,$sql);
while($data = mysqli_fetch_assoc($res)){
	$t=$t."<tr><td>".$data[name]."</td><td>".$data[price]."</td></tr>";
}
$t=$t.'</table>';
?>

<html>
<body>
<div class="container">
	<div class="header">
		<meta charset="UTF-8">
	</div>
<div class="body">
	<form action="index.php" method="POST">
	<p class="labelItem">Catalog of cars:</p>
	<?=$t ?></br>
	<input type="hidden" name="hiddenValue" value="<?=$s ?>">
	<input type="submit" name="next" value="Next 3">
	</form>
</div>
</body>
</html>