<!DOCTYPE html>
<html>
<head>
<title>web_collection_1</title>
<style>

html{
	width:100%;
	padding:0 auto;
}
body{
	width:70%;
	margin:0 auto;
	text-align:center;
}

</style>
</head>
<body>
<h4>web_collection_1</h4>
<div style="width:50%;text-align:left;">
<ul>
<?php
foreach(scandir(".") as $item){
	if(is_dir($item)){
	?><li><a href="<?php echo $item;?>"><?php echo $item;?></a></li><?php
	}
}
?>
</ul>
</div>
</body>
</html>
