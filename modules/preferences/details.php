<?php
//stop the direct browsing to this file - let index.php handle which files get displayed
checkLogin();

//if valid then do save
if ($_POST['p_description'] != "" ) {
	include("./modules/preferences/save.php");
}

#get the invoice id
$preference_id = $_GET['id'];

$preference = getPreference($preference_id);

$smarty->assign('preference',$preference);

$smarty -> assign('pageActive', 'preference');
$smarty -> assign('active_tab', '#setting');