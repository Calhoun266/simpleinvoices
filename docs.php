<?php

$t = isset($_GET['t'])?$_GET['t']:null;
$p = isset($_GET['p'])?$_GET['p']:null;

require_once("./include/smarty/Smarty.class.php");
$smarty = new Smarty();
$smarty -> compile_dir = "./cache/";
include("./include/include_main.php");
$smarty -> assign("LANG",$LANG);

if(isset($_GET['lang'])) {
	$lang = $_GET['lang'];
}
else {
	$lang = "en";
}

if($_GET['t'] == "help") {
	include("./docs/$lang/help/$_GET[p].html");
}
else {
	$file = "./docs/$lang/general/$_GET[p]";
	
	if(file_exists($file.".html")) {
		$file = $file.".html";
	}
	else {
		$file = $file.".php";
	}
	//echo $file;
	$smarty -> display("../templates/default/header.tpl"); 
	include($file);
	$smarty -> display("../templates/default/footer.tpl");

}

?>
