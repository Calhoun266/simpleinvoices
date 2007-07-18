{*
/*
* Script: add_invoice_item.tpl
* 	 Add new item to an existing invoice 
*
* Authors:
*	 Nicolas Ruflin
*
* Last edited:
* 	 2007-07-18
*
* License:
*	 GPL v2 or above
*
* Website:
*	http://www.simpleinvoices.org
*/
*}
{if $smarty.post.submit != null}
	<META HTTP-EQUIV=REFRESH CONTENT=1;URL=index.php?module=invoices&view=details&invoice={$smarty.post.invoice_id}&type={$smarty.post.type}>
{else}
<form name="add_invoice_item" action="index.php?module=invoices&view=add_invoice_item" method="post">
	<table>


			<tr>
				<td><input type=text name="quantity" size="5"></td><td input type=text name="description" size="50">
				                
			{if $products == null }
				<p><em>{$LANG.no_products}</em></p>
			{else}
				<select name="product">
					<option value=""></option>
				{foreach from=$products item=product}
					<option {if $product.id == $defaults.product} selected {/if} value="{$product.id}">{$product.description}</option>
				{/foreach}
				</select>
			{/if}
				                				                
                </td></tr>
                
                <tr class="text hide">
        <td colspan=2 ><textarea input type=text name='description' rows=3 cols=80 WRAP=nowrap></textarea></td>
</tr>
</table>

<div style="text-align:center;">
	<input type="submit" name="submit" value="{$LANG.save_invoice}">
	<input type="hidden" name="invoice_id" value="{$smarty.get.invoice}">
	<input type="hidden" name="type" value="{$smarty.get.type}">
	<input type="hidden" name="tax_id" value="{$smarty.get.tax_id}">
</div>
</form>
{/if}
