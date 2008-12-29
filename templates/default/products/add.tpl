
{* if bill is updated or saved.*}

{if $smarty.post.description != "" && $smarty.post.id != null } 
	{include file="../templates/default/products/save.tpl"}
{else}
{* if  name was inserted *} 
	{if $smarty.post.id !=null} 
		<div class="validation_alert"><img src="./images/common/important.png"</img>
		You must enter a description for the product</div>
		<hr />
	{/if}
<form name="frmpost" ACTION="index.php?module=products&view=add" METHOD="POST" id="frmpost" onSubmit="return checkForm(this);">


<table align=center>
	<tr>
		<td class="details_screen">{$LANG.product_description} 
		<a class="cluetip" href="#"	rel="docs.php?t=help&p=required_field" title="{$LANG.Required_Field}"><img src="./images/common/required-small.png"></img></a>
		</td>
		<td><input type=text name="description" value="{$smarty.post.description}" size=50 id="description" class="required edit" onblur="checkField(this);"></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_unit_price}</td>
		<td><input type=text class="edit" name="unit_price" value="{$smarty.post.unit_price}"  size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.product_cf1} 
		<a class="cluetip" href="#"	rel="docs.php?t=help&p=custom_fields" title="{$LANG.custom_fields}"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td><input type=text class="edit" name="custom_field1" value="{$smarty.post.custom_field1}"  size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.product_cf2} 
		<a class="cluetip" href="#"	rel="docs.php?t=help&p=custom_fields" title="{$LANG.custom_fields}"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td><input type=text class="edit" name="custom_field2" value="{$smarty.post.custom_field2}" size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.product_cf3} 
		<a class="cluetip" href="#"	rel="docs.php?t=help&p=custom_fields" title="{$LANG.custom_fields}"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td><input type=text class="edit" name="custom_field3" value="{$smarty.post.custom_field3}" size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.product_cf4} 
		<a class="cluetip" href="#"	rel="docs.php?t=help&p=custom_fields" title="{$LANG.custom_fields}"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td><input type=text class="edit" name="custom_field4" value="{$smarty.post.custom_field4}" size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td><textarea input type=text class="editor" name='notes' rows=8 cols=50>{$smarty.post.notes|unescape}</textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.product_enabled}</td>
		<td>
			{html_options class=edit name=enabled options=$enabled selected=1}
		</td>
	</tr>
	{*	{showCustomFields categorieId="3" itemId=""} *}
</table>

<table class="buttons" align="center">
	<tr>
		<td>
			<button type="submit" class="positive" name="id" value="{$LANG.save}">
			    <img class="button_img" src="./images/common/tick.png" alt=""/> 
				{$LANG.save}
			</button>

			<input type="hidden" name="op" value="insert_product">
		
			<a href="./index.php?module=products&view=manage" class="negative">
		        <img src="./images/common/cross.png" alt=""/>
	        	{$LANG.cancel}
    		</a>
	
		</td>
	</tr>
</table>


</form>
	{/if}