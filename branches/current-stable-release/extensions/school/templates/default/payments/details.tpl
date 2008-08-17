<h3>{$LANG.manage_payments}</h3>
<hr />

<table align=center>
	<tr>
		<td class='details_screen'>{$LANG.payment_id}</td><td>{$payment.id}</td>
	</tr>
	<tr>
		<td class='details_screen'>{$LANG.invoice_id}</td><td><a href='index.php?module=invoices&view=quick_view&invoice={$payment.ac_inv_id}&action=view&type={$invoiceType.inv_ty_id}''>{$payment.ac_inv_id}</a></td>
	</tr>
	<tr>
		<td class='details_screen'>Branch</td><td>{$payment.branch}</td>
	</tr>
	<tr>
		<td class='details_screen'>{$LANG.amount}</td><td>{$payment.ac_amount}</td>
	</tr>
	<tr>
		<td class='details_screen'>{$LANG.date_upper}</td><td>{$payment.date}</td>
	</tr>
	<tr>
		<td class='details_screen'>{$LANG.biller}</td><td>{$payment.biller}</td>
	</tr>
	<tr>
		<td class='details_screen'>{$LANG.customer}</td><td>{$payment.customer}</td>
	</tr>
	<tr>
		<td class='details_screen'>{$LANG.payment_type}</td><td>{$paymentType.pt_description}</td>
	</tr>
        <tr>
                <td class='details_screen'>{$LANG.notes}</td><td>{$payment.ac_notes}
        </tr>

</table>
<hr />
	<form>
		<input type="button" value="Back" onCLick="history.back()">
	</form>
