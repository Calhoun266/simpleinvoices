{*
	/*
	* Script: header.tpl
	* 	 Header file for invoice template
	*
	* License:
	*	 GPL v3 or above
	*
	* Website:
	*	http://www.simpleinvoices.org
	*/
*}
<input type="hidden" name="action" value="insert" />
<table align="center">
<tr>
<td>
	<table align="left">
		
		<tr>
			<td class="details_screen">
				{$LANG.biller_name}
			</td>
			<td>
				{if $billers == null }
			<p><em>{$LANG.no_billers}</em></p>
		{else}
			<select name="biller_id">
			{foreach from=$billers item=biller}
				<option {if $biller.id == $defaults.biller} selected {/if} value="{$biller.id}">{$biller.name}</option>
			{/foreach}
			</select>
		{/if}
		
			</td>
		</tr>
		<tr>
			<td class="details_screen">
				{$LANG.customer_name}
			</td>
			<td>
				{if $customers == null }
					<p><em>{$LANG.no_customers}</em></p>
				{else}
					<select name="customer_id">
					{foreach from=$customers item=customer}
						<option {if $customer.id == $defaultCustomerID} selected {/if} value="{$customer.id}">{$customer.name}</option>
					{/foreach}
					</select>
				{/if}
			</td>
		</tr>
		<tr wrap="nowrap">
		        <td class="details_screen">{$LANG.date_formatted}</td>
		        <td wrap="nowrap">
		                        <input type="text" class="date-picker" size="10" name="date" id="date1" value='{$smarty.now|date_format:"%Y-%m-%d"}' />   
		        </td>
		</tr>
	<table>

