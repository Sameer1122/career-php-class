<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	The answer is <strong><?php 
		$a=$_GET['num1'];
		$b=$_GET['num2'];
		echo ($a+$b);
	 ?></strong>
	 <br>
	 <a href="index.php">BACK</a>
</body>
</html>