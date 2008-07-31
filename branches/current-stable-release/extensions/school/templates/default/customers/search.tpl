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
	<META HTTP-EQUIV=REFRESH CONTENT=1;URL=index.php?module=customers&view=manage&action=search&id={$id}&student_id={$student_id}&first_name={$first_name}&middle_name={$middle_name}&name={$last_name}&course_id={$course_id}>
	<br><br>
		Searching students ...
	<br><br>
{else}
<div id="top"><h3>Search Students</h3></div>
 <hr />
<form name="add_invoice_item" action="#" method="post">
	<table align="center">
			<tr>
				<td class="details_screen">
					Student
				</td>
				<td input type=text name="description">
				                
				{if $students == null }
					<p><em>There are no students in the database</em></p>
				{else}
					<select name="student_id">
						<option value=""></option>
					{foreach from=$students item=student}
						<option value="{$student.id}">{$student.first_name} {$student.middle_name} {$student.name}</option>
					{/foreach}
					</select>
				{/if}
					                				                
                </td>
			</tr>
			<tr>
				<td class="details_screen">
					Student ID
				</td>
				<td>
					<input type=text name="id" size="5">
				</td>
			</tr>
			
			<tr>
				<td class="details_screen">
					Course
				</td>
				<td>
					<select name="course_id">
						<option value=""></option>
					{foreach from=$courses item=course}
						<option value="{$course.id}">{$course.description}</option>
					{/foreach}
					</select>
				</td>
			</tr>
			<tr>
				<td class="details_screen">
					Fisrt Name
				</td>
				<td>
					<input type=text name="first_name" size="50">
				</td>
			</tr>
			<tr>
				<td class="details_screen">
					Middle Name
				</td>
				<td>
					<input type=text name="middle_name" size="50">
				</td>
			</tr>
			<tr>
				<td class="details_screen">
					Last Name
				</td>
				<td>
					<input type=text name="last_name" size="50">
				</td>
			</tr>
</table>
<hr />
<div style="text-align:center;">
	<input type="submit" name="submit" value="Search">
</div>
</form>
{/if}
