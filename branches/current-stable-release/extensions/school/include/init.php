<?php

//TODO: have to be moved to an other place...
/*
require_once("./modules/include/js/lgplus/php/chklang.php");
require_once("./modules/include/js/lgplus/php/settings.php");


$path = pathinfo($_SERVER['REQUEST_URI']);
$install_path = $path['dirname'];

*/
//include_once('./extensions/school/config/config.php');

include_once("./extensions/school/include/sql_queries.php");
include_once("./extensions/school/include/acl.php");
include_once("./extensions/school/include/check_permissions.php");
include_once("./extensions/school/include/number_to_ru.php");
/*
include_once('./include/language.php');

include_once('./include/functions.php');

checkConnection();

include_once('./include/manageCustomFields.php');
include_once("./include/validation.php");
*/
$early_exit[] = "certificate_print";
$early_exit[] = "payments_print";
$early_exit[] = "invoices_print";
$early_exit[] = "invoices_ajax";

?>