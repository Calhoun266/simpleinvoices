<?php
// -Gates 5/5/2008 added domain_id to parameters 
//stop the direct browsing to this file - let index.php handle which files get displayed
checkLogin();

# Deal with op and add some basic sanity checking

$op = !empty( $_POST['op'] ) ? addslashes( $_POST['op'] ) : NULL;


#insert invoice_preference
if (  $op === 'insert_product_attribute' ) {

	$sql = "INSERT into
		".TB_PREFIX."products_attributes
	VALUES
		(
			NULL,
			:name
		 )";

	if (dbQuery($sql,
	  ':name', $_POST['name']
	  )) {
		$display_block = "Successfully saved";
	} else {
		$display_block = "Error occurred with saving";
	}

	//header( 'refresh: 2; url=manage_preferences.php' );
	$refresh_total = "<META HTTP-EQUIV=REFRESH CONTENT=2;URL=index.php?module=product_attribute&view=manage>";

}

#edit preference

else if (  $op === 'edit_product_attribute' ) {

	if (isset($_POST['save_product_attribute'])) {
		$sql = "UPDATE
				".TB_PREFIX."products_attributes
			SET
				name = :name
			WHERE
				id = :id";

		if (dbQuery($sql, 
		  ':name', $_POST['name'],
		  ':id', $_GET['id']))
	    {
			$display_block = "Successfully saved";
		} else {
			$display_block = "Error occurred with saving";
		}

		$refresh_total = "<META HTTP-EQUIV=REFRESH CONTENT=2;URL=index.php?module=product_attribute&view=manage>";

		}

	else if ($_POST[action] == "Cancel") {

		//header( 'refresh: 0; url=manage_preferences.php' );
		$refresh_total = "<META HTTP-EQUIV=REFRESH CONTENT=0;URL=index.php?module=product_attribute&view=manage>";
	}
}


$refresh_total = isset($refresh_total) ? $refresh_total : '&nbsp';

$pageActive = "options";
$smarty->assign('pageActive', $pageActive);

$smarty -> assign('display_block',$display_block); 
$smarty -> assign('refresh_total',$refresh_total); 
?>
