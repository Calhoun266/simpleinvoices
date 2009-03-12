<?php

// This file must be in the root of the application folder where the index.php resides

$module = "invoices";
$view = "templates";

require_once("./include/init.php");	// for getInvoice() and getPreference()
foreach($extension as $key=>$value)
{
	/*
	* If extension is enabled then continue and include the requested file for that extension if it exists
	*/	
	if($value['enabled'] == "1")
	{
		//echo "Enabled:".$value['name']."<br><br>";
		if(file_exists("./extensions/$value[name]/include/init.php"))
		{
	//		require_once("./extensions/$value[name]/include/init.php");
		}
	}
}
/*
* The include configs and requirements stuff section - end
*/

// $defaults = getSystemDefaults(); // Not required as of now.
$invoice_id = $_GET['id'];
$invoice = invoice::getInvoice($invoice_id);

$preference = getPreference($invoice['preference_id']);
$pdfname = trim($preference['pref_inv_wording']) . $invoice_id;

$url_pdf = urlPDF($invoice_id);
$url_pdf_encoded = urlencode($url_pdf);

header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); 	// Date in the past

$myloc  = "./library/pdf/html2ps.php";  // This file must be in the root of the application folder where the index.php resides
$myloc .= "?";
$myloc .= "&process_mode=single";
$myloc .= "&renderfields=1";
$myloc .= "&renderlinks=1";
$myloc .= "&renderimages=1";
$myloc .= "&scalepoints=1";
$myloc .= "&pixels=" 		. $config->export->pdf->screensize;
$myloc .= "&media=" 		. $config->export->pdf->papersize;
$myloc .= "&leftmargin=" 	. $config->export->pdf->leftmargin;
$myloc .= "&rightmargin="	. $config->export->pdf->rightmargin;
$myloc .= "&topmargin=" 	. $config->export->pdf->topmargin;
$myloc .= "&bottommargin=" 	. $config->export->pdf->bottommargin;
$myloc .= "&transparency_workaround=1";
$myloc .= "&imagequality_workaround=1";
$myloc .= "&output=1";
$myloc .= "&location=pdf";
$myloc .= "&pdfname=" 		. $pdfname;
$myloc .= "&URL=" 			. $url_pdf_encoded;

header("Location: $myloc");

?>