<?php
include('./config/config.php');

   // include the PHPReports classes on the PHP path! configure your path here
   include "./modules/reports/PHPReportMaker.php";

   $sSQL = "SELECT b.name, sum(ii.total) AS sum_total
      FROM ".TB_PREFIX."biller b INNER JOIN
      ".TB_PREFIX."invoices iv ON (b.id = iv.biller_id) INNER JOIN
      ".TB_PREFIX."invoice_items ii ON (ii.invoice_id = iv.id)
      GROUP BY b.name";
   $oRpt = new PHPReportMaker();

   $oRpt->setXML("./modules/reports/xml/report_biller_total.xml");
   $oRpt->setUser("$db_user");
   $oRpt->setPassword("$db_password");
   $oRpt->setDatabaseInterface("pdo");
   if ($db_server == 'pgsql') {
      $oRpt->setConnection("pgsql:host=$db_host");
   } else {
      $oRpt->setConnection("mysql:host=$db_host");
   }
   $oRpt->setSQL($sSQL);
   $oRpt->setDatabase("$db_name");
   ob_start();
   $oRpt->run();
   $showReport = ob_get_contents();
   
   ob_end_clean();

   
   $pageActive = "reports";

   $smarty->assign('pageActive', $pageActive);
   $smarty->assign('showReport', $showReport);
?>
