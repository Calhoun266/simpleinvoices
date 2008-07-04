{*
/*
* Script: details.tpl
* 	 Customer details template
*
* Authors:
*	 Justin Kelly, Nicolas Ruflin
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

{if $smarty.get.action == 'view' }
<b>{$LANG.customer} :: <a href="index.php?module=customers&view=details&id={$customer.id}&action=edit">{$LANG.edit}</a>
</b>
<hr></hr>
	
<div id="container-1">
	<ul class="anchors">
		<li><a href="#section-1">General Info</a></li>
		<li><a href="#section-2">Courses</a></li>
		<li><a href="#section-3">Additional Info</a></li>
		<li><a href="#section-4">Custom Fields</a></li>
		<li><a href="#section-5">Ledger</a></li>
		<li><a href="#section-6">{$LANG.notes}</a></li>
	</ul>
	<div id="section-1" class="fragment">
<p>
<table align=center>
	<tr>
		<td class="details_screen">Place of Enrolment</td>
		<td>
			{$place_of_enrolment}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Place of Lessons</td>
		<td>
			{$place_of_lesson}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Student {$LANG.id}</td>
		<td>{$customer.id}</td>
	</tr>
	<tr>
		<td class="details_screen">Date (TODO: what date - awaiting answer from site)</td>
		<td>
			{$customer.date}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Last name <a href="docs.php?t=help&p=required_field" rel="gb_page_center[350, 150]"><img src="./images/common/required-small.png"></img></a></td>
		<td>
			{$customer.name}
		</td>
		
	</tr>
	<tr>
		<td class="details_screen">First name <a href="docs.php?t=help&p=required_field" rel="gb_page_center[350, 150]"><img src="./images/common/required-small.png"></img></a></td>
		<td>
			{$customer.first_name}
		</td>
		
	</tr>
	<tr>
		<td class="details_screen">Middle name</td>
		<td>
			{$customer.middle_name}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Birthday (dd/mm/yyyy)</td>
		<td>
			{$customer_birthday.day }/{$customer_birthday.month}/{$customer_birthday.year}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Gender</td>
		<td>
			{$customer.gender}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Age</td>
		<td>
			{$age}
		</td>
	</tr>
	
	<tr>
		<td class="details_screen" colspan="2">Passport details:</td>
	</tr>
	<tr>
		<td class="details_screen">&nbsp;&nbsp;&nbsp;Passport number</td>
		<td>
			{$customer.passport_number}
		</td>
	</tr>
		<tr>
		<td class="details_screen">&nbsp;&nbsp;&nbsp;Passport issued at</td>
		<td>
			{$customer.passport_issued_at}
		</td>
	</tr>
		<tr>
		<td class="details_screen">&nbsp;&nbsp;&nbsp;Passport issued on (dd/mm/yyyy)</td>
		<td>
			{$customer_passport_issued_on.day }/{$customer_passport_issued_on.month}/{$customer_passport_issued_on.year}
		</td>
	</tr>
	
	
	<tr>
		<td class="details_screen">{$LANG.street}</td>
		<td>
			{$customer.street_address}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street2}</td>
		<td>
			{$customer.street_address2}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.city}</td>
		<td>
			{$customer.city}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.state}</td>
		<td>
			{$customer.state}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Post code</td>
		<td>
			{$customer.zip_code}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.country}</td>
		<td>
			{$customer.country}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.phone}</td>
		<td>
			{$customer.phone}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Cell phone</td>
		<td>
			{$customer.mobile_phone}
		</td>	
	<tr>
		<td class="details_screen">{$LANG.fax}</td>
		<td>
			{$customer.fax}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.email}</td>
		<td>
			{$customer.email}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>
			{$customer.wording_for_enabled}
		</td>
	</tr>


	</table>
</p>
	</div>
	<div id="section-2" class="fragment">
	<p>
	<h3><a href="index.php?module=enrollment&view=add&id={$customer.id}">Enroll student into course</a></h3>
	<table align=center>
	<tr class="sortHeader">
		<th class="sortable">
			Course ID
		</td>
		<th class="sortable">
			Course branch
		</td>
		<th class="sortable">
			Course name
		</td>
		<th class="sortable">
			Course subject
		</td>
		<th class="sortable">
			Course age
		</td>
		<th class="sortable">
			Course level
		</td>
		<th class="sortable">
			Course type
		</td>
		<th class="sortable">
			Course status
		</td>
		<th class="sortable">
			Date of first lesson
		</td>
		<th class="sortable">
			Start reason
		</td>
		<th class="sortable">
			Dropped
		</td>
		<th class="sortable">
			Dropped reason
		</td>
	</tr>
{foreach from=$course_enrol item=courses}
	<tr class="index_table">
		<td class="details_screen">
			<a href="index.php?module=course&view=detail&action=view&id={$courses.id}">{$courses.id}</a>
		</td>
		<td class="details_screen">
			{$courses.branch_name}
		</td>
		<td class="details_screen">
			{$courses.course_name}
		</td>
		<td class="details_screen">
			{$courses.subject_name}
		</td>
		<td class="details_screen">
			{$courses.age}
		</td>
		<td class="details_screen">
			{$courses.level_name}
		</td>
		<td class="details_screen">
			{$courses.type}
		</td>
		<td class="details_screen">
			{$courses.status}
		</td>
		<td class="details_screen">
			{$courses.start_date}
		</td>
		<td class="details_screen">
			{$courses.start_reason}
		</td>
		<td class="details_screen">
			{$courses.dropped_date}
		</td>
		<td class="details_screen">
			{$courses.dropped_reason}
		</td>
	</tr>
{/foreach}
	</table>
<br>
	</p>
	</div>
	<div id="section-3" class="fragment">
<p>
	<table align=center>
	<tr>
		<td class="details_screen" colspan=2>Parent or Guardian </td>
	</tr>
	<tr>
		<td class="details_screen">Relationship</td>
		<td>
			{$guardian1_relationship}
		</td>
	{*
		<td><input type=text name="guardian1_relationship" value="{$smarty.post.guardian1_relationship}" size=25></td>
	*}
	</tr>
	<tr>
		<td class="details_screen">First name</td>
		<td>
			{$customer.guardian1_first_name}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Middle name</td>
		<td>
			{$customer.guardian1_middle_name}
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Last Name</td>
		<td>
			{$customer.guardian1_last_name}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home phone</td>
		<td>
			{$customer.guardian1_home_phone}
		</td>	</tr>
	<tr>
		<td class="details_screen">Cell phone</td>
		<td>
			{$customer.guardian1_cell_phone}
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Email</td>
			<td>
			{$customer.guardian1_email}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport number</td>
		<td>
			{$customer.guardian1_passport_number}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued at</td>
		<td>
			{$customer.guardian1_passport_issued_at}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued on</td>
		<td>
			{$customer_guardian1_passport_issued_on.day }/{$customer_guardian1_passport_issued_on.month}/{$customer_guardian1_passport_issued_on.year}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home address</td>
			<td>
			{$customer.guardian1_address}
		</td>
	</tr>

	<tr>
		<td class="details_screen" colspan=2>Parent or Guardian 2</td>
	</tr>
	<tr>
		<td class="details_screen">Relationship</td>
		<td>
			{$guardian2_relationship}
		</td>
	{*
		<td><input type=text name="guardian1_relationship" value="{$smarty.post.guardian1_relationship}" size=25></td>
	*}
	</tr>
	<tr>
		<td class="details_screen">First name</td>
		<td>
			{$customer.guardian2_first_name}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Middle name</td>
		<td>
			{$customer.guardian2_middle_name}
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Last Name</td>
		<td>
			{$customer.guardian2_last_name}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home phone</td>
		<td>
			{$customer.guardian2_home_phone}
		</td>	</tr>
	<tr>
		<td class="details_screen">Cell phone</td>
		<td>
			{$customer.guardian2_cell_phone}
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Email</td>
			<td>
			{$customer.guardian2_email}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport number</td>
		<td>
			{$customer.guardian2_passport_number}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued at</td>
		<td>
			{$customer.guardian2_passport_issued_at}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued on</td>
		<td>
			{$customer_guardian2_passport_issued_on.day }/{$customer_guardian2_passport_issued_on.month}/{$customer_guardian2_passport_issued_on.year}
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home address</td>
		<td>
			{$customer.guardian2_address}
		</td>
	</tr>

	
	</table>
	</p>
	</div>
	<div id="section-4" class="fragment">
	<p>
	<table align=center>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf1} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			{$customer.custom_field1}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf2} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			{$customer.custom_field2}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf3} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			{$customer.custom_field3}
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf4} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			{$customer.custom_field4}
		</td>
	</tr>
	</table>
	</p>
	</div>
	
	
	<div id="section-5" class="fragment">
		<h4><u>Ledger</u></h4>
		<p >
		<table align="center">
		<tr>
			<td  colspan="6" class="details_screen">
				Summary of accounts:
			</td>
		</tr>
		<tr>
			<td class="details_screen">Total charges</td>
			<td style="text-align:right">{$stuff.total|number_format:2}</td>
			<td class="details_screen">Total payments</td>
			<td style="text-align:right">{$stuff.paid|number_format:2}</td>
			<td class="details_screen">Balace</td>
			<td style="text-align:right"><u>{$stuff.owing|number_format:2}</u></td>
		</tr>
		</table><br>
		<table width="100%" align="center">
			<tr class="sortHeader">

				<th class="sortable">{$LANG.id}</th>
				<th class="sortable">{$LANG.total}</th>
				<th class="sortable">{$LANG.paid}</th>
				<th class="sortable">{$LANG.owing}</th>
				<th class="sortable">{$LANG.date_created}</th>

			</tr>
		
			{foreach from=$invoices item=invoice}
	
			<tr class="index_table">
				<td class="details_screen"><a href="index.php?module=invoices&view=quick_view&invoice={$invoice.id}">{$invoice.id}</a></td>
				<td class="details_screen">{$invoice.total|number_format:2}</td>
				<td class="details_screen">{$invoice.paid|number_format:2}</td>
				<td class="details_screen">{$invoice.owing|number_format:2}</td>
				<td class="details_screen">{$invoice.date}</td>
			</tr>

			{/foreach}
		</table>	
		</p>
	</div>
	
	<div id="section-6" class="fragment">
	<p>
	<table align=center>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td>
			{$customer.notes}
		</td>
	</tr>

{*
	{showCustomFields categorieId="2"}
*}
</table>
<p>
</div>
</div>





<!--
<table align="center">
	<tr>
		<td colspan="7" align="center"> </td>
	</tr>
	<tr>
		<td colspan="4" align="center" class="align_center"><i>{$LANG.customer_details}</i></td>
		<td width="10%"></td>
		<td colspan="2" align="center" class="align_center"><i>{$LANG.summary_of_accounts}</i></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.customer} {$LANG.id}</td>
		<td>{$customer.id}</td>
		<td colspan="2"></td>
		<td></td>
		<td class="details_screen">{$LANG.total_invoices}</td>
		<td style="text-align:right">{$stuff.total|number_format:2}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.customer_name}</td>
		<td colspan="2">{$customer.name}</td>
		<td colspan="2"></td>
		<td class="details_screen">{$LANG.total_paid}</td>
		<td style="text-align:right">{$stuff.paid|number_format:2}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.attention_short} <a href="docs.php?t=help&p=customer_contact" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td colspan="2">{$customer.attention}</td>
		<td colspan=2></td>
		<td class="details_screen">{$LANG.total_owing}</td>
		<td style="text-align:right"><u>{$stuff.owing|number_format:2}</u></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street}</td>
		<td>{$customer.street_address}</td>
	</tr>
	<tr>
		<td class="details_screen" NOWRAP>{$LANG.street2} <a href="docs.php?t=help&p=street2" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td>{$customer.street_address2}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.city}</td>
		<td>{$customer.city}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.zip}</td>
		<td>{$customer.zip_code}</td>
		<td class="details_screen">{$LANG.phone}</td>
		<td>{$customer.phone}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.state}</td>
		<td>{$customer.state}</td>
		<td class="details_screen" NOWRAP>{$LANG.mobile_phone}</td>
		<td>{$customer.mobile_phone}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.country}</td>
		<td>{$customer.country}</td>
		<td class="details_screen">{$LANG.fax}</td>
		<td>{$customer.fax}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>{$customer.wording_for_enabled}</td>
		<td class="details_screen">{$LANG.email}</td>
		<td>{$customer.email}</td>
	</tr>
</table>
<br />
<div id="container-1">
	<ul class="anchors">
		<li><a href="#section-1">{$LANG.custom_fields}</a></li>
		<li><a href="#section-2">{$LANG.customer} {$LANG.invoice_listings}</a></li>
		<li><a href="#section-3">{$LANG.notes}</a></li>
	</ul>
	<div id="section-1" class="fragment">
		<h4><u>{$LANG.customer} {$LANG.custom_fields}</u></h4>
		<p>
			<table>
				<tr>
					<td class="details_screen">{$customFieldLabel.customer_cf1} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
					</td>
					<td>{$customer.custom_field1}</td>
				</tr>
				<tr>
					<td class="details_screen">{$customFieldLabel.customer_cf2} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
					</td>
					<td>{$customer.custom_field2}</td>
				</tr>
				<tr>
					<td class="details_screen">{$customFieldLabel.customer_cf3} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
					</td>
					<td>{$customer.custom_field3}</td>
				</tr>
				<tr>
					<td class="details_screen">{$customFieldLabel.customer_cf4} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
					</td>
					<td>{$customer.custom_field4}</td>
				</tr>
{*
					{showCustomFields categorieId="2" itemId=$smarty.get.id }
*}
			</table>
		</p>
	</div>
	<div id="section-2" class="fragment">
		<h4><u>{$LANG.invoice_listings}</u></h4>
		<p >
		<table width="100%" align="center">
			<tr class="sortHeader">

				<th class="sortable">{$LANG.id}</th>
				<th class="sortable">{$LANG.total}</th>
				<th class="sortable">{$LANG.paid}</th>
				<th class="sortable">{$LANG.owing}</th>
				<th class="sortable">{$LANG.date_created}</th>

			</tr>
		
			{foreach from=$invoices item=invoice}
	
			<tr class="index_table">
				<td class="details_screen"><a href="index.php?module=invoices&view=quick_view&invoice={$invoice.id}">{$invoice.id}</a></td>
				<td class="details_screen">{$invoice.total|number_format:2}</td>
				<td class="details_screen">{$invoice.paid|number_format:2}</td>
				<td class="details_screen">{$invoice.owing|number_format:2}</td>
				<td class="details_screen">{$invoice.date}</td>
			</tr>

			{/foreach}
		</table>	
		</p>
	</div>
	<div id="section-3" class="fragment">
		<h4><u>{$LANG.customer} {$LANG.notes}</u></h4>
		<p>
			<div id="left">
				{$customer.notes}
			</div>
		</p>
	</div>
</div>
-->

<hr></hr>
<a href="index.php?module=customers&view=details&id={$customer.id}&action=edit">{$LANG.edit}</a>
{/if}

{if $smarty.get.action == 'edit' }

<form name="frmpost"
	action="index.php?module=customers&view=save&id={$customer.id}"
	method="post">

<div id="top"><b>{$LANG.customer_edit}</b></div>
<hr></hr>
<div id="container-1">
	<ul class="anchors">
		<li><a href="#section-1">General Info</a></li>
		<li><a href="#section-2">Additional Info</a></li>
		<li><a href="#section-3">Custom Fields</a></li>
		<li><a href="#section-4">Ledger</a></li>
		<li><a href="#section-5">{$LANG.notes}</a></li>
	</ul>
	<div id="section-1" class="fragment">
<p>
<table align="center">

<tr>
		<td class="details_screen">Place of Enrolment</td>
		<td>
		<select name="place_of_enrolment">
			{foreach from=$branch item=branch_row}
				<option {if $branch_row.id == $customer.place_of_enrolment} selected {/if} value="{$branch_row.id}">{$branch_row.name}</option>
			{/foreach}
		</select>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Place of Lessons</td>
		<td>
					<select name="place_of_lesson">
			{foreach from=$branch item=branch_row}
				<option {if $branch_row.id == $customer.place_of_lesson} selected {/if} value="{$branch_row.id}">{$branch_row.name}</option>
			{/foreach}
			</select>
		</td>
{*		<td><input type=text name="place_of_lesson" value="{$smarty.post.place_of_lesson}" size=25></td> *}
	</tr>
	<tr>
		<td class="details_screen">Student {$LANG.id}</td>
		<td>{$customer.id}</td>
	</tr>
	<tr>
		<td class="details_screen">Date (TODO: what date - awaiting answer from site)</td>
		<td>
			<input type=text name="date" value="{$customer.date}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Last name <a href="docs.php?t=help&p=required_field" rel="gb_page_center[350, 150]"><img src="./images/common/required-small.png"></img></a></td>
		<td>
			<input type=text name="name" value="{$customer.name}" size=25>
		</td>
		
	</tr>
	<tr>
		<td class="details_screen">First name <a href="docs.php?t=help&p=required_field" rel="gb_page_center[350, 150]"><img src="./images/common/required-small.png"></img></a></td>
		<td>
			<input type=text name="first_name" value="{$customer.first_name}" size=25>
		</td>
		
	</tr>
	<tr>
		<td class="details_screen">Middle name</td>
		<td>
			<input type=text name="middle_name" value="{$customer.middle_name}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Birthday (dd/mm/yyyy)</td>
		<td>
		<select name="birthday_day">
			{html_options values=$day output=$day selected=$customer_birthday.day}
		</select>
		<select name="birthday_month">
			{html_options options=$month selected=$customer_birthday.month}
		</select>
		<select name="birthday_year">
			{html_options values=$year output=$year selected=$customer_birthday.year}
		</select>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Gender</td>
		<td>
		<select name="gender">
			{html_options values=$gender output=$gender selected=$customer.gender}
		</select>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Age</td>
		<td>
			{$age}
		</td>
	</tr>
	{* <input type=text name=" " value="{$customer. }" size=25> *}
	<tr>
		<td class="details_screen" colspan="2">Passport details:</td>
	</tr>
	<tr>
		<td class="details_screen">&nbsp;&nbsp;&nbsp;Passport number</td>
		<td>
			<input type=text name="passport_number" value="{$customer.passport_number}" size=25>
		</td>
	</tr>
		<tr>
		<td class="details_screen">&nbsp;&nbsp;&nbsp;Passport issued at</td>
		<td>
			<input type=text name="passport_issued_at" value="{$customer.passport_issued_at}" size=25>
		</td>
	</tr>
		<tr>
		<td class="details_screen">&nbsp;&nbsp;&nbsp;Passport issued on (dd/mm/yyyy)</td>
		<td>
		<select name="passport_issued_on_day">
			{html_options values=$day output=$day selected=$customer_passport_issued_on.day}
		</select>
		<select name="passport_issued_on_month">
			{html_options options=$month selected=$customer_passport_issued_on.month}
		</select>
		<select name="passport_issued_on_year">
			{html_options values=$year output=$year selected=$customer_passport_issued_on.year}
		</select>
		</td>
	</tr>
	
	
	<tr>
		<td class="details_screen">{$LANG.street}</td>
		<td>
			<input type=text name="street_address" value="{$customer.street_address}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street2}</td>
		<td>
			<input type=text name="street_address2" value="{$customer.street_address2}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.city}</td>
		<td>
			<input type=text name="city" value="{$customer.city}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.state}</td>
		<td>
			<input type=text name="state" value="{$customer.state}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Post code</td>
		<td>
			<input type=text name="zip_code" value="{$customer.zip_code}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.country}</td>
		<td>
			<input type=text name="country" value="{$customer.country}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.phone}</td>
		<td>
			<input type=text name="phone" value="{$customer.phone}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Cell phone</td>
		<td>
			<input type=text name="mobile_phone" value="{$customer.mobile_phone}" size=25>
		</td>	
	<tr>
		<td class="details_screen">{$LANG.fax}</td>
		<td>
			<input type=text name="fax" value="{$customer.fax}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.email}</td>
		<td>
			<input type=text name="email" value="{$customer.email}" size=25>
		</td>
	</tr>
	
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>
			{html_options name=enabled options=$enabled selected=$customer.enabled}
		</td>
	</tr>


	</table>
</p>
	</div>
	<div id="section-2" class="fragment">
<p>
	<table align=center>
	<tr>
		<td class="details_screen" colspan=2>Parent or Guardian </td>
	</tr>
	<tr>
		<td class="details_screen">Relationship</td>
		<td>
			<select name="guardian1_relationship">
			{foreach from=$relation item=relation_row}
				<option {if $relation_row.id == $customer.guardian1_relationship} selected {/if} value="{$relation_row.id}">{$relation_row.relation}</option>
			{/foreach}
			</select>
		</td>
	{*
		<td><input type=text name="guardian1_relationship" value="{$smarty.post.guardian1_relationship}" size=25></td>
	*}
	</tr>
	<tr>
		<td class="details_screen">First name</td>
		<td>
			<input type=text name="guardian1_first_name" value="{$customer.guardian1_first_name}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Middle name</td>
		<td>
			<input type=text name="guardian1_middle_name" value="{$customer.guardian1_middle_name}" size=25>
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Last Name</td>
		<td>
			<input type=text name="guardian1_last_name" value="{$customer.guardian1_last_name}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home phone</td>
		<td>
			<input type=text name="guardian1_home_phone" value="{$customer.guardian1_home_phone}" size=25>
		</td>	</tr>
	<tr>
		<td class="details_screen">Cell phone</td>
		<td>
			<input type=text name="guardian1_cell_phone" value="{$customer.guardian1_cell_phone}" size=25>
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Email</td>
			<td>
			<input type=text name="guardian1_email" value="{$customer.guardian1_email}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport number</td>
		<td>
			<input type=text name="guardian1_passport_number" value="{$customer.guardian1_passport_number}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued at</td>
		<td>
			<input type=text name="guardian1_passport_issued_at" value="{$customer.guardian1_passport_issued_at}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued on</td>
		<td>
		<select name="guardian1_passport_issued_on_day">
			{html_options values=$day output=$day selected=$customer_guardian1_passport_issued_on.day}
		</select>
		<select name="guardian1_passport_issued_on_month">
			{html_options options=$month selected=$customer_birthday.month}
		</select>
		<select name="guardian1_passport_issued_on_year">
			{html_options values=$year output=$year selected=$customer_guardian1_passport_issued_on.year}
		</select>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home address</td>
			<td>
			<input type=text name="guardian1_address" value="{$customer.guardian1_address}" size=25>
		</td>
	</tr>

	<tr>
		<td class="details_screen" colspan=2>Parent or Guardian 2</td>
	</tr>
	<tr>
		<td class="details_screen">Relationship</td>
		<td>
			<select name="guardian2_relationship">
			{foreach from=$relation item=relation_row}
				<option {if $relation_row.id == $customer.guardian2_relationship} selected {/if} value="{$relation_row.id}">{$relation_row.relation}</option>
			{/foreach}
			</select>
		</td>
	{*
		<td><input type=text name="guardian2_relationship" value="{$smarty.post.guardian2_relationship}" size=25></td>
	*}
	</tr>
	<tr>
		<td class="details_screen">First name</td>
		<td>
			<input type=text name="guardian2_first_name" value="{$customer.guardian2_first_name}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Middle name</td>
		<td>
			<input type=text name="guardian2_middle_name" value="{$customer.guardian2_middle_name}" size=25>
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Last Name</td>
		<td>
			<input type=text name="guardian2_last_name" value="{$customer.guardian2_last_name}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home phone</td>
		<td>
			<input type=text name="guardian2_home_phone" value="{$customer.guardian2_home_phone}" size=25>
		</td>	</tr>
	<tr>
		<td class="details_screen">Cell phone</td>
		<td>
			<input type=text name="guardian2_cell_phone" value="{$customer.guardian2_cell_phone}" size=25>
		</td>	
	</tr>
	<tr>
		<td class="details_screen">Email</td>
			<td>
			<input type=text name="guardian2_email" value="{$customer.guardian2_email}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport number</td>
		<td>
			<input type=text name="guardian2_passport_number" value="{$customer.guardian2_passport_number}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued at</td>
		<td>
			<input type=text name="guardian2_passport_issued_at" value="{$customer.guardian2_passport_issued_at}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Passport issued on</td>
		<td>
		<select name="guardian2_passport_issued_on_day">
			{html_options values=$day output=$day selected=$customer_guardian2_passport_issued_on.day}
		</select>
		<select name="guardian2_passport_issued_on_month">
			{html_options options=$month selected=$customer_guardian2_passport_issued_on.month}
		</select>
		<select name="guardian2_passport_issued_on_year">
			{html_options values=$year output=$year selected=$customer_guardian2_passport_issued_on.year}
		</select>
		</td>
	</tr>
	<tr>
		<td class="details_screen">Home address</td>
			<td>
			<input type=text name="guardian2_address" value="{$customer.guardian2_address}" size=25>
		</td>
	</tr>

	
	</table>
	</p>
	</div>
	<div id="section-3" class="fragment">
	<p>
	<table align=center>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf1} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			<input type=text name="custom_field1" value="{$customer.custom_field1}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf2} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			<input type=text name="custom_field2" value="{$customer.custom_field2}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf3} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			<input type=text name="custom_field3" value="{$customer.custom_field3}" size=25>
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf4} <a
			href="docs.php?t=help&p=custom_fields"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			<input type=text name="custom_field4" value="{$customer.custom_field4}" size=25>
		</td>
	</tr>
	</table>
	</p>
	</div>
	
	
	<div id="section-4" class="fragment">
		<h4><u>Ledger</u></h4>
		<p >
		<table align="center">
		<tr>
			<td  colspan="6" class="details_screen">
				Summary of accounts:
			</td>
		</tr>
		<tr>
			<td class="details_screen">Total charges</td>
			<td style="text-align:right">{$stuff.total|number_format:2}</td>
			<td class="details_screen">Total payments</td>
			<td style="text-align:right">{$stuff.paid|number_format:2}</td>
			<td class="details_screen">Balace</td>
			<td style="text-align:right"><u>{$stuff.owing|number_format:2}</u></td>
		</tr>
		</table><br>
		<table width="100%" align="center">
			<tr class="sortHeader">

				<th class="sortable">{$LANG.id}</th>
				<th class="sortable">{$LANG.total}</th>
				<th class="sortable">{$LANG.paid}</th>
				<th class="sortable">{$LANG.owing}</th>
				<th class="sortable">{$LANG.date_created}</th>

			</tr>
		
			{foreach from=$invoices item=invoice}
	
			<tr class="index_table">
				<td class="details_screen"><a href="index.php?module=invoices&view=quick_view&invoice={$invoice.id}">{$invoice.id}</a></td>
				<td class="details_screen">{$invoice.total|number_format:2}</td>
				<td class="details_screen">{$invoice.paid|number_format:2}</td>
				<td class="details_screen">{$invoice.owing|number_format:2}</td>
				<td class="details_screen">{$invoice.date}</td>
			</tr>

			{/foreach}
		</table>	
		</p>
	</div>
	
	<div id="section-5" class="fragment">
	<p>
	<table align=center>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td>
			<textarea name='notes' rows=8 cols=50>{$customer.notes}</textarea>
		</td>
	</tr>


<!--
{*
	<tr>
		<td class="details_screen">{$LANG.customer} {$LANG.id}</td>
		<td>{$customer.id}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.customer_name}</td>
		<td><input type="text" name="name" value="{$customer.name}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.attention_short} <a href="docs.php?t=help&p=customer_contact" rel="gb_page_center[450, 450]" ><img src="./images/common/help-small.png"></img></a>
		</td>
		<td><input type="text" name="attention" value="{$customer.attention}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street}</td>
		<td><input type="text" name="street_address" value="{$customer.street_address}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street2} <a href="docs.php?t=help&p=street2" rel="gb_page_center[450, 450]" ><img src="./images/common/help-small.png"></img></a>
		</td>
		<td><input type="text" name="street_address2" value="{$customer.street_address2}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.city}</td>
		<td><input type="text" name="city" value="{$customer.city}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.zip}</td>
		<td><input type="text" name="zip_code" value="{$customer.zip_code}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.state}</td>
		<td><input type="text" name="state" value="{$customer.state}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.country}</td>
		<td><input type="text" name="country" value="{$customer.country}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.phone}</td>
		<td><input type="text" name="phone" value="{$customer.phone}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.mobile_phone}</td>
		<td><input type="text" name="mobile_phone" value="{$customer.mobile_phone}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.fax}</td>
		<td><input type="text" name="fax" value="{$customer.fax}" size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.email}</td>
		<td>
			<input type="text" name="email" value="{$customer.email}" size="50" /></td
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf1} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td>
			<input type="text" name="custom_field1" value="{$customer.custom_field1}" size="50" /></td
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf2} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td>
			<input type="text" name="custom_field2" value="{$customer.custom_field2}" size="50" /></td
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf3} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td>
			<input type="text" name="custom_field3" value="{$customer.custom_field3}" size="50" /></td
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf4} <a href="docs.php?t=help&p=custom_fields" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a>
		</td>
		<td>
			<input type="text" name="custom_field4" value="{$customer.custom_field4}" size="50" /></td
	</tr>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td><textarea name="notes" rows="8" cols="50">{$customer.notes}</textarea></td>
	</tr>
{*
		{showCustomFields categorieId="2" itemId=$smarty.get.id }
*}
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>
			{html_options name=enabled options=$enabled selected=$customer.enabled}
		</td>
	</tr>
*}
-->
</table>
</div>
</div>
<br>
<!-- <input type="submit" name="cancel" value="{$LANG.cancel}" /> -->
<input type="submit" name="save_customer" value="{$LANG.save_customer}" />
<input type="hidden" name="op" value="edit_customer" />


</form>
{/if}
