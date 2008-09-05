<?php

header("Content-type: text/xml");

$start = (isset($_POST['start'])) ? $_POST['start'] : "0" ;
$dir = (isset($_POST['sortorder'])) ? $_POST['sortorder'] : "ASC" ;
$sort = (isset($_POST['sortname'])) ? $_POST['sortname'] : "pt_description" ;
$limit = (isset($_POST['rp'])) ? $_POST['rp'] : "25" ;
$page = (isset($_POST['page'])) ? $_POST['page'] : "1" ;



//SC: Safety checking values that will be directly subbed in
if (intval($start) != $start) {
	$start = 0;
}
if (intval($limit) != $limit) {
	$limit = 25;
}
if (!preg_match('/^(asc|desc)$/iD', $dir)) {
	$dir = 'ASC';
}

$query = $_POST['query'];
$qtype = $_POST['qtype'];

$where = "";
if ($query) $where = " WHERE $qtype LIKE '%$query%' ";


/*Check that the sort field is OK*/
$validFields = array('pt_id', 'pt_description','enabled');

if (in_array($sort, $validFields)) {
	$sort = $sort;
} else {
	$sort = "pt_description";
}

	$sql = "SELECT 
				pt_id,
				pt_description, 
				(SELECT (CASE  WHEN pt_enabled = 0 THEN '".$LANG['disabled']."' ELSE '".$LANG['enabled']."' END )) AS enabled
		FROM 
				".TB_PREFIX."payment_types
		$where
		ORDER BY 
				$sort $dir 
		LIMIT 
				$start, $limit";


	$sth = dbQuery($sql) or die(htmlspecialchars(end($dbh->errorInfo())));
	$payment_types = $sth->fetchAll(PDO::FETCH_ASSOC);
	$count = $sth->rowCount();
	 

	$xml .= "<rows>";
	$xml .= "<page>$page</page>";
	$xml .= "<total>$count</total>";
	
	foreach ($payment_types as $row) {
		$xml .= "<row id='".$row['pref_id']."'>";
		$xml .= "<cell><![CDATA[
			<a class='index_table' title='$LANG[view] $LANG[payment_type] ".utf8_encode($row['pt_description'])."' href='index.php?module=payment_types&view=details&id=$row[pt_id]&action=view'><img src='images/common/view.png' height='16' border='-5px' padding='-4px' valign='bottom' /></a>
			<a class='index_table' title='$LANG[edit] $LANG[payment_type] ".utf8_encode($row['pt_description'])."' href='index.php?module=payment_types&view=details&id=$row[pt_id]&action=edit'><img src='images/common/edit.png' height='16' border='-5px' padding='-4px' valign='bottom' /></a>
		]]></cell>";
		$xml .= "<cell><![CDATA[".utf8_encode($row['pt_id'])."]]></cell>";		
		$xml .= "<cell><![CDATA[".utf8_encode($row['pt_description'])."]]></cell>";
		$xml .= "<cell><![CDATA[".utf8_encode($row['enabled'])."]]></cell>";				
		$xml .= "</row>";		
	}
	$xml .= "</rows>";

echo $xml;




?> 
