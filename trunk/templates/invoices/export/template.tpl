<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>{$preference.pref_inv_wording} {$LANG.number_short}: {$invoice.id}</title>
</head>
<body>
<br>
<div id="container">
<div id="header">
</div>


<table width="100%" align="center">
		<tr>
	   		<td colspan="5"><img src="{$logo}" border="0" hspace="0" align="left"></td>
			<th align="right"><span>{$preference.pref_inv_heading}</span></th>
		</tr>
		<tr>
			<td colspan="6"><hr size="1"></td>
		</tr>
</table>
	

<table >
		<tr>
				<td colspan="4"><b>{$preference.pref_inv_wording} {$LANG.summary}</b></td>
		</tr>
		<tr>
				<td >{$preference.pref_inv_wording} {$LANG.number_short}:</td>
				<td colspan="3">{$invoice.id}</td>
		</tr>
		<tr>
				<td nowrap >{$preference.pref_inv_wording} {$LANG.date}:</td>
				<td colspan="3">{$invoice.date}</td>
		</tr>
	<!-- Show the Invoice Custom Fields if valid -->
		{ if $invoice.custom_field1 != null}
		<tr>
				<td nowrap>{$customFieldLabels.invoice_cf1}:</td>
				<td colspan="3">{$invoice.custom_field1}</td>
		</tr>
		{/if}
		{ if $invoice.custom_field2 != null}
		<tr>
				<td nowrap>{$customFieldLabels.invoice_cf2}:</td>
				<td colspan="3">{$invoice.custom_field2}</td>
		</tr>
		{/if}
		{ if $invoice.custom_field3 != null}
		<tr>
				<td nowrap>{$customFieldLabels.invoice_cf3}:</td>
				<td colspan="3">{$invoice.custom_field3}</td>
		</tr>
		{/if}
		{ if $invoice.custom_field4 != null}
		<tr>
				<td nowrap>{$customFieldLabels.invoice_cf4}:</td>
				<td colspan="3">{$invoice.custom_field4}</td>
		</tr>
		{/if}

		<tr>
				<td >{$LANG.total}: </td>
				<td colspan="3">{$preference.pref_currency_sign}{$invoice.total|number_format:2}</td>
		</tr>
		<tr>
				<td >{$LANG.paid}:</td>
				<td colspan="3">{$preference.pref_currency_sign}{$invoice.paid|number_format:2}</td>
		</tr>
		<tr>
				<td nowrap >{$LANG.owing}:</td>
				<td colspan="3">{$preference.pref_currency_sign}{$invoice.owing|number_format:2}</td>
		</tr>

</table>
	<!-- Summary - end -->


<table>

	<!-- Biller section - start -->
        <tr>
                <td border=1 cellpadding=2 cellspacing=1><b>{$LANG.biller}:</b></td>
				<td border=1 cellpadding=2 cellspacing=1 colspan="3">{$biller.name}</td>
        </tr> 

        {if $biller.street_address != null}
		<tr>
				<td >{$LANG.address}:</td>
				<td  align="left" colspan="3">{$biller.street_address}</td>
		</tr>   
        {/if}
        {if $biller.street_address2 != null }
			{if $biller.street_address == null }
		<tr>
				<td >{$LANG.address}:</td>
				<td align="left" colspan="3">{$biller.street_address2}</td>
		</tr>   
			{/if}
			{if $biller.street_address != null}
		<tr>
				<td></td>
				<td align="left" colspan="3">{$biller.street_address2}</td>
		</tr>   
			{/if}
		{/if}

		{merge_address field1=$biller.city field2=$biller.state field3=$biller.zip_code street1=$biller.street_address street2=$biller.street_address2 class1="" class2="" colspan="3"}
	
	    {if $biller.country != null }
        <tr>
        		<td></td>
				<td colspan="3">{$biller.country}</td>
        </tr>
   		{/if}

        {if $biller.phone != null }
        <tr>
                <td >{$LANG.phone_short}:</td>
				<td colspan="3">{$biller.phone}</td>
        </tr>
   		{/if}
        {if $biller.fax != null }
		<tr>
				<td >{$LANG.fax}:</td>
				<td colspan="3">{$biller.fax}</td>
		</tr>
   		{/if}
        {if $biller.mobile_phone != null }
		<tr>
                <td >{$LANG.mobile_short}:</td>
				<td colspan="3">{$biller.mobile_phone}</td>
		</tr>
   		{/if}
        {if $biller.email != null }
        <tr>
                <td >{$LANG.email}:</td>
				<td colspan="3">{$biller.email}</td>
        </tr>
		{/if}
        {if $biller.custom_field1 != null }
        <tr>
                <td >{$customFieldLabels.biller_cf1}:</td>
				<td colspan="3">{$biller.custom_field1}</td>
        </tr>	
		{/if}
        {if $biller.custom_field2 != null }
        <tr>
                <td >{$customFieldLabels.biller_cf2}:</td>
				<td  colspan="3">{$biller.custom_field2}</td>
        </tr>	
		{/if}
        {if $biller.custom_field3 != null }
        <tr>
                <td >{$customFieldLabels.biller_cf3}:</td>
				<td  colspan="3">{$biller.custom_field3}</td>
        </tr>	
		{/if}
        {if $biller.custom_field4 != null }
        <tr>
                <td >{$customFieldLabels.biller_cf4}:</td>
				<td  colspan="3">{$biller.custom_field4}</td>
        </tr>	
		{/if}
		<tr>
				<td colspan="4"></td>
		</tr>

	<!-- Biller section - end -->

	<br>
		<tr>
				<td colspan="3"><br /><td>
		</tr>

	<!-- Customer section - start -->

	<tr>
		<td><b>{$LANG.customer}:</b></td>
		<td colspan="3">{$customer.name}</td>
	</tr>

        {if $customer.attention != null}
    <tr>
			<td >{$LANG.attention_short}:</td>
			<td align="left"  colspan="3" >{$customer.attention}</td>
    </tr>
        {/if}
        {if $customer.street_address != null }
    <tr>
			<td >{$LANG.address}:</td>
			<td  align="left" colspan="3">{$customer.street_address}</td>
    </tr>   
        {/if}
        
        {if $customer.street_address2 != null }

			{if $customer.street_address == null }
                <tr >
                        <td >{$LANG.address}:</td>
						<td  align="left" colspan="3">{$customer.street_address2}</td>
                </tr>   
			{/if}
			{if $customer.street_address != null}
                <tr >
                        <td ></td>
						<td  align="left" colspan="3">{$customer.street_address2}</td>
                </tr>   
            {/if}
        {/if}

		{merge_address field1=$customer.city field2=$customer.state field3=$customer.zip_code street1=$customer.street_address street2=$customer.street_addtess2 class1="" class2="" colspan="3"}
	
            {if $customer.country != null }
                <tr>
                        <td ></td>
						<td  colspan="3">{$customer.country}</td>
                </tr>
       		{/if}
            {if $customer.phone != null }
                <tr>
                        <td >{$LANG.phone_short}:</td>
						<td  colspan="3">{$customer.phone}</td>
                </tr>
       		{/if}
            {if $customer.fax != null }
                <tr>
                        <td >{$LANG.fax}:</td>
						<td  colspan="3">{$customer.fax}</td>
                </tr>
       		{/if}
            {if $customer.mobile_phone != null }
                <tr>
                        <td >{$LANG.mobile_short}:</td>
						<td  colspan="3">{$customer.mobile_phone}</td>
                </tr>
       		{/if}
            {if $customer.email != null }
                <tr>
                        <td >{$LANG.email}:</td>
						<td  colspan="3">{$customer.email}</td>
                </tr>
			{/if}
        	{if $customer.custom_field1 != null }
                <tr>
                        <td >{$customFieldLabels.customer_cf1}:</td>
						<td  colspan="3">{$customer.custom_field1}</td>
                </tr>	
			{/if}
        	{if $customer.custom_field2 != null }
                <tr>
                        <td >{$customFieldLabels.customer_cf2}:</td>
						<td  colspan="3">{$customer.custom_field2}</td>
                </tr>	
			{/if}
        	{if $customer.custom_field3 != null }
                <tr>
                        <td >{$customFieldLabels.customer_cf3}:</td>
						<td  colspan="3">{$customer.custom_field3}</td>
                </tr>	
			{/if}
        	{if $customer.custom_field4 != null }
                <tr>
                        <td >{$customFieldLabels.customer_cf4}:</td>
						<td  colspan="3">{$customer.custom_field4}</td>
                </tr>	
			{/if}
                
				<tr>
						<td colspan="4"></td>
				</tr>

	<!-- Customer section - end -->

</table>

<table width="100%">
	<tr>
		<td colspan="6"><br /></td>
	</tr>
		
	{if $invoice.type_id == 2 }
		{include file="$template_path/itemised.tpl"}
	{/if}

	{if $invoice.type_id == 3 }
		{include file="$template_path/consulting.tpl"}
	{/if}
	
	{if $invoice.type_id == 1 }
		{include file="$template_path/total.tpl"}
	{/if}
	


    {section name=line start=0 loop=$invoice.tax_grouped step=1}
    
    	{if ($invoice.tax_grouped[line].tax_amount != "0") }  
    	
    	<tr class='details_screen'>
	        <td colspan="2"></td>
			<td colspan="3" align="right">{$invoice.tax_grouped[line].tax_name}</td>
			<td colspan="1" align="right">{$preference.pref_currency_sign}{$invoice.tax_grouped[line].tax_amount|siLocal_number}</td>
	    </tr>
	    
	    {/if}
	    
	{/section}


	<tr >
		<td colspan="3"></td>
		<td align="right" colspan="2">{$LANG.tax_total}</td>
		<td align="right" >{$preference.pref_currency_sign}{$invoice.total_tax|number_format:2}</td>
	</tr>
	<tr >
		<td colspan="6" ><br></td>
	</tr>
	<tr >
		<td colspan="3"></td>
		<td align="right" colspan="2"><b>{$preference.pref_inv_wording} {$LANG.amount}</b></td>
		<td  align="right"><u>{$preference.pref_currency_sign}{$invoice.total|number_format:2}</u></td>
	</tr>
	<tr>
		<td colspan="6"><br /><br /></td>
	</tr>
	
		<!-- invoice details section - start -->
	<tr>
		<td colspan="6"><b>{$preference.pref_inv_detail_heading}</b></td>
	</tr>
	<tr>
		<td colspan="6"><i>{$preference.pref_inv_detail_line}</i></td>
	</tr>
	<tr>
		<td colspan="6">{$preference.pref_inv_payment_method}</td>
	</tr>
	<tr>
		<td colspan="6">{$preference.pref_inv_payment_line1_name} {$preference.pref_inv_payment_line1_value}</td>
	</tr>
	<tr>
		<td colspan="6">{$preference.pref_inv_payment_line2_name} {$preference.pref_inv_payment_line2_value}</td>
	</tr>
	<tr>
		<td><br></td>
	</tr>
	<tr>
		<td colspan="6"><div style="font-size:8pt;" align="center">{$biller.footer}</div></td>
	</tr>
</table>

<div id="footer"></div>

</div>

</body>
</html>