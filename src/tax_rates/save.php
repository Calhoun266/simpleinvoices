<?php
include('./include/include_main.php');

//stop the direct browsing to this file - let index.php handle which files get displayed
if (!defined("BROWSE")) {
   echo "You Cannot Access This Script Directly, Have a Nice Day.";
   exit();
}

include('./config/config.php');

$conn = mysql_connect( $db_host, $db_user, $db_password);
mysql_select_db( $db_name, $conn);

# Deal with op and add some basic sanity checking

$op = !empty( $_POST['op'] ) ? addslashes( $_POST['op'] ) : NULL;

#insert tax rate

if (  $op === 'insert_tax_rate' ) {

$conn = mysql_connect("$db_host","$db_user","$db_password");
mysql_select_db("$db_name",$conn);

/*Raymond - what about the '', bit doesnt seem to do an insert in me environment when i exclude it
$sql = "INSERT INTO {$tb_prefix}tax VALUES ('$_POST[tax_description]','$_POST[tax_percentage]')";
*/

$sql = "INSERT into
		{$tb_prefix}tax
	VALUES
		(	
			'',
			'$_POST[tax_description]',
			'$_POST[tax_percentage]',	
			'$_POST[tax_enabled]'
		)";

if (mysql_query($sql, $conn)) {
	$display_block = $LANG_save_tax_rate_success;
} else {
	$display_block = $LANG_save_tax_rate_failure;
}

//header( 'refresh: 2; url=manage_tax_rates.php' );
$refresh_total = "<META HTTP-EQUIV=REFRESH CONTENT=2;URL=index.php?module=tax_rates&view=manage>";
}



#edit tax rate

else if (  $op === 'edit_tax_rate' ) {

$conn = mysql_connect("$db_host","$db_user","$db_password");
mysql_select_db("$db_name",$conn);

	if (isset($_POST['save_tax_rate'])) {
		$sql = "UPDATE
				{$tb_prefix}tax
			SET
				tax_description = '$_POST[tax_description]',
				tax_percentage = '$_POST[tax_percentage]',
				tax_enabled = '$_POST[tax_enabled]'
			WHERE
				tax_id = " . $_GET['submit'];

		if (mysql_query($sql, $conn)) {
			$display_block = $LANG_save_tax_rate_success;
		} else {
			$display_block = $LANG_save_tax_rate_failure;
		}

		//header( 'refresh: 2; url=manage_tax_rates.php' );
		$refresh_total = "<META HTTP-EQUIV=REFRESH CONTENT=2;URL=index.php?module=tax_rates&view=manage>";

		}

	else if (isset($_POST['cancel'])) {

		//header( 'refresh: 0; url=manage_tax_rates.php' );
		$refresh_total = "<META HTTP-EQUIV=REFRESH CONTENT=2;URL=index.php?module=tax_rates&view=manage>";
	}
}

include('./include/include_main.php');

$refresh_total = isset($refresh_total) ? $refresh_total : '&nbsp';
$display_block_items = isset($display_block_items) ? $display_block_items : '&nbsp;';
echo <<<EOD
{$refresh_total}


EOD;

echo <<<EOD
<br>
<br>

$display_block
<br><br>
$display_block_items

EOD;
?>
<!-- ./src/include/design/footer.inc.php gets called here by controller srcipt -->
