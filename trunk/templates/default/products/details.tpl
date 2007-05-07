<form name="frmpost"
	action="index.php?module=products&view=save&submit={$smarty.get.submit}"
	method="post">


{if $smarty.get.action== 'view' }

	<b>{$LANG.products} ::
	<a href="index.php?module=products&view=details&submit={$product.id}&action=edit">{$LANG.edit}</a></b>
	
 	<hr></hr>

	<table align="center">
	<tr>
		<td class="details_screen">{$LANG.product_id}</td><td>{$product.id}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_description}</td>
		<td>{$product.description}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_unit_price}</td>
		<td>{$product.unit_price}</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.1} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td>{$product.custom_field1}</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.2} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td>{$product.custom_field2}</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.3} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td>{$product.custom_field3}</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.4} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td>{$product.custom_field4}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.notes}</td><td>{$product.notes}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_enabled}</td>
		<td>{$product.wording_for_enabled}</td>
	</tr>
	</table>

<hr></hr>
<a href="index.php?module=products&view=details&submit={$product.id}&action=edit">{$LANG.edit}</a>
{/if}


{if $smarty.get.action== 'edit' }

	<b>{$LANG.product_edit}</b>
	<hr></hr>

	<table align="center">
	<tr>
		<td class="details_screen">{$LANG.product_id}</td><td>{$product.id}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_description}</td>
		<td><input type="text" name="description" size="50" value="{$product.description}" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_unit_price}</td>
		<td><input type="text" name="unit_price" size="25" value="{$product.unit_price}" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.1} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td><input type="text" name="custom_field1" size="50" value="{$product.custom_field1}" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.2} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td><input type="text" name="custom_field2" size="50" value="{$product.custom_field2}" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.3} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td><input type="text" name="custom_field3" size="50" value="{$product.custom_field3}" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.4} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td>
		<td><input type="text" name="custom_field4" size="50" value="{$product.custom_field4}" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td><textarea name="notes" rows="8" cols="50">{$product.notes}</textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_enabled}</td>
		<td>
		{* enabled block *}
		<select name="enabled">
			<option value="{$product.enabled}" selected
				style="font-weight: bold;">{$product.wording_for_enabled}</option>
			<option value="1">{$LANG.enabled}</option>
			<option value="0">{$LANG.disabled}</option>
		</select>
		{* /enabled block*}
		</td>
	</tr>
	</table>
{/if} 
{if $smarty.get.action== 'edit' }
	<hr></hr>
		<input type="submit" name="cancel" value="{$LANG.cancel}" /> 
		<input type="submit" name="save_product" value="{$LANG.save_biller}" /> 
		<input type="hidden" name="op" value="edit_product" /> 
	{/if}
</form>
