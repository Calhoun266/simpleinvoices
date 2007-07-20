<?php
/*
* Script: total.php
* 	total invoice page
*
* Authors:
*	 Justin Kelly, Nicolas Ruflin
*
* Last edited:
* 	 2007-07-19
*
* License:
*	 GPL v2 or above
*
* Website:
* 	http://www.simpleinvoices.org
 */

//stop the direct browsing to this file - let index.php handle which files get displayed
checkLogin();

jsBegin();
jsFormValidationBegin("frmpost");
jsTextValidation("biller_id","Biller Name",1,100);
jsTextValidation("customer_id","Customer Name",1,100);
jsValidateifNum("gross_total","Gross Total");
jsTextValidation("select_tax","Tax Rate",1,100);
jsPreferenceValidation("select_preferences","Invoice Preference",1,100);
jsFormValidationEnd();
jsEnd();


include('./modules/invoices/invoice.php');

?>
