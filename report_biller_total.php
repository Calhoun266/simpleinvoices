<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php include('./config/config.php'); ?>
<?php include('./include/menu.php'); ?>
<script type="text/javascript" src="niftycube.js"></script>
<script type="text/javascript">
window.onload=function(){
Nifty("div#container");
Nifty("div#content,div#nav","same-height small");
Nifty("div#header,div#footer","small");
}
</script>
<!-- greybox js and css stuff -->
    <script type="text/javascript" src="./include/jquery.js"></script>
    <script type="text/javascript" src="./include/greybox.js"></script>
    <link rel="stylesheet" type="text/css" href="themes/<?php echo $theme; ?>/tables.css" media="all"/>
    <script type="text/javascript">
      var GB_ANIMATION = true;
      $(document).ready(function(){
        $("a.greybox").click(function(){
          var t = this.title || $(this).text() || this.href;
          GB_show(t,this.href,470,600);
          return false;
        });
      });
    </script>

<title><?php echo $title; echo $mi_page_title; ?></title>
</head>
<body>
<?php
$mid->printMenu('hormenu1');
$mid->printFooter();
?>

<link rel="stylesheet" type="text/css" href="./themes/<?php echo $theme; ?>/tables.css">
<br>
<div id="container">
<div id=header></div id=header>

<?php
include('./config/config.php');

   // include the PHPReports classes on the PHP path! configure your path here
   include "./reports/PHPReportMaker.php";

   $sSQL = "select  si_biller.b_name,  sum(si_invoice_items.inv_it_total) from si_biller, si_invoice_items, si_invoices where si_invoices.inv_biller_id = si_biller.b_id and si_invoices.inv_id = si_invoice_items.inv_it_invoice_id GROUP BY b_name";
   $oRpt = new PHPReportMaker();

   $oRpt->setXML("reports/report_biller_total.xml");
   $oRpt->setUser("$db_user");
   $oRpt->setPassword("$db_password");
   $oRpt->setConnection("$db_host");
   $oRpt->setDatabaseInterface("mysql");
   $oRpt->setSQL($sSQL);
   $oRpt->setDatabase("$db_name");
   $oRpt->run();
?>

<div id="footer"></div>
</div>
</div>
</div>
<a href="./documentation/text/reports_xsl.html" class="greybox"><font color="red">Got "OOOOPS, THERE'S AN ERROR HERE." error?</font></a>
</body>
</html>		
