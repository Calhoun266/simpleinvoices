<?php

//stop the direct browsing to this file - let index.php handle which files get displayed
checkLogin();

//TODO
jsBegin();
jsFormValidationBegin("frmpost");
jsValidateRequired("pt_description",$LANG['payment_type_description']);
jsFormValidationEnd();
jsEnd();


#get the invoice id
$payment_type_id = $_GET['id'];

$paymentType = getPaymentType($payment_type_id);

$pageActive = "options";
$smarty->assign('pageActive', $pageActive);
$smarty->assign('paymentType',$paymentType);
?>
